#!/bin/bash

# mbedtls
cp -f ../patches/201-Camellia-block-cipher.patch package/libs/mbedtls/patches/

echo '
CONFIG_CRYPTO_CHACHA20_X86_64=y
CONFIG_CRYPTO_POLY1305_X86_64=y
' >> ./target/linux/x86/64/config-5.4

exit 0
