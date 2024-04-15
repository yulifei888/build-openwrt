#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default

# selet love kenel
sed -i '13d' target/linux/x86/Makefile
sed -i '14d' target/linux/x86/Makefile
sed -i '13i KERNEL_PATCHVER:=5.15' target/linux/x86/Makefile

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

