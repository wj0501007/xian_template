#!/bin/bash

cd `dirname $0`
pwd

# Create the 'logs' dir if it does not exists.
if [ ! -d "logs" ]; then
  mkdir logs
fi

java -Xms128m -Xms128m -XX:-OmitStackTraceInFastThrow -cp conf:plugins/*:../libs/* info.xiancloud.plugin.init.start.StartServer "${PWD##*/}"

sleep 1


