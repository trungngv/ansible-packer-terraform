FROM ubuntu:bionic-20200219

ARG ANSIBLE_VERSION="2.10"

LABEL maintainer="Trung Nguyen <ernest@codebarber.com>"
LABEL ansible_version=${ANSIBLE_VERSION}

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y ansible curl python3 python3-pip 

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD    ["/bin/bash"]
