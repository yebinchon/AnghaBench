
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519_PUBLICKEYBYTES ;
 int crypto_sign_ed25519_SEEDBYTES ;
 int memmove (unsigned char*,unsigned char const*,int ) ;

int
crypto_sign_ed25519_sk_to_pk(unsigned char *pk, const unsigned char *sk)
{
    memmove(pk, sk + crypto_sign_ed25519_SEEDBYTES,
            crypto_sign_ed25519_PUBLICKEYBYTES);
    return 0;
}
