#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


FILE="package/base-files/files/bin/config_generate"
sed -i "/uci -q batch <<-EOF/a \\\tset system.@system[-1].hostname='xdaWrt'" "$FILE"


cat > package/base-files/files/etc/banner << 'EOF'
     _________                _       __        __      _   
    /        /\     __  __ __| |  __ _\ \      / /_ __ | |_ 
   /        /  \    \ \/ // _` | / _` |\ \ /\ / /| '__|| __|
  /   xda  /    \    >  <| (_| || (_| | \ V  V / | |   | |_ 
 /________/ xda  \  /_/\_\\__,_| \__,_|  \_/\_/  |_|    \__|
 \        \  xda /
  \        \    /  -------------------------------------------
   \  xda   \  /    %D %V, %C
    \________\/    -------------------------------------------
EOF
