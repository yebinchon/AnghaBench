
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DNSCRYPT_SHARED_SECRET_KEY_LENGTH ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 int hashlittle (int *,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static uint32_t
dnsc_shared_secrets_cache_key(uint8_t* key,
                              uint8_t esversion,
                              uint8_t* pk,
                              uint8_t* sk)
{
    key[0] = esversion;
    memcpy(key + 1, pk, crypto_box_PUBLICKEYBYTES);
    memcpy(key + 1 + crypto_box_PUBLICKEYBYTES, sk, crypto_box_SECRETKEYBYTES);
    return hashlittle(key, DNSCRYPT_SHARED_SECRET_KEY_LENGTH, 0);
}
