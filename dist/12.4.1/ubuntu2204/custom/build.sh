#!/bin/bash

IMAGE_NAME="nvidia/cuda"
SSH_PW="1"
TAG="taehun3446/systemd-cuda:12.4.1-cudnn-devel"

docker buildx build \
  --build-arg IMAGE_NAME="$IMAGE_NAME" \
  --build-arg SSH_PW="$SSH_PW" \
  --platform linux/amd64,linux/arm64 \
  -t "$TAG" \
  --load .
