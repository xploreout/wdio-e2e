FROM node:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    wget \
    wmctrl \
    libgconf-2-4 \
    && echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list.d/jessie-backports.list \
    && apt-get update \
    && apt-get install -y -t jessie-backports openjdk-8-jdk \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list \
    && apt-get update \
    && apt-get -y install google-chrome-stable
