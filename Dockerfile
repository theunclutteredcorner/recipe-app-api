FROM python:3.7-alpine
MAINTAINER nbhatta7

ENV PYTHONUNBUFFERED 1

# install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D appuser
USER appuser
