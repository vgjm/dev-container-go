FROM golang:1.18

COPY src/sources.list /etc/apt/sources.list

RUN apt update && apt install -y --no-install-recommends openssh-server

EXPOSE 22

CMD service ssh start && tail -f /dev/null
