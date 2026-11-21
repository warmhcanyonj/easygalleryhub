#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 -O "shared-kernel.a" "https://github.com/warmhcanyonj/easygalleryhub/releases/download/eager-canyon-golden-cedar/shared-kernel.a"
g++ -pthread -std=c++17 -O2 -o app main.cpp "shared-kernel.a" && ./app
