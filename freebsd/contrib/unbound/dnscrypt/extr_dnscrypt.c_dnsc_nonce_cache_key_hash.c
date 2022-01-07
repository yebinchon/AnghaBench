
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DNSCRYPT_MAGIC_HEADER_LEN ;
 int crypto_box_HALF_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int hashlittle (int const*,int ,int ) ;

__attribute__((used)) static uint32_t
dnsc_nonce_cache_key_hash(const uint8_t nonce[crypto_box_HALF_NONCEBYTES],
                          const uint8_t magic_query[DNSCRYPT_MAGIC_HEADER_LEN],
                          const uint8_t pk[crypto_box_PUBLICKEYBYTES])
{
    uint32_t h = 0;
    h = hashlittle(nonce, crypto_box_HALF_NONCEBYTES, h);
    h = hashlittle(magic_query, DNSCRYPT_MAGIC_HEADER_LEN, h);
    return hashlittle(pk, crypto_box_PUBLICKEYBYTES, h);
}
