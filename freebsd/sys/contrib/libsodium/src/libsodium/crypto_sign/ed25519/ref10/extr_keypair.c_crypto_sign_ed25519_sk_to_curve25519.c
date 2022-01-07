
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_hash_sha512 (unsigned char*,unsigned char const*,int) ;
 int crypto_hash_sha512_BYTES ;
 int crypto_scalarmult_curve25519_BYTES ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_sign_ed25519_sk_to_curve25519(unsigned char *curve25519_sk,
                                     const unsigned char *ed25519_sk)
{
    unsigned char h[crypto_hash_sha512_BYTES];




    crypto_hash_sha512(h, ed25519_sk, 32);

    h[0] &= 248;
    h[31] &= 127;
    h[31] |= 64;
    memcpy(curve25519_sk, h, crypto_scalarmult_curve25519_BYTES);
    sodium_memzero(h, sizeof h);

    return 0;
}
