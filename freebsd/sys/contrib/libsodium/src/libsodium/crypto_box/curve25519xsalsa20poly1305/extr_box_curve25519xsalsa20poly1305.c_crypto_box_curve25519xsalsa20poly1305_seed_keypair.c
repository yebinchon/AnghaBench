
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_hash_sha512 (unsigned char*,unsigned char const*,int) ;
 int crypto_scalarmult_curve25519_base (unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_box_curve25519xsalsa20poly1305_seed_keypair(unsigned char *pk,
                                                   unsigned char *sk,
                                                   const unsigned char *seed)
{
    unsigned char hash[64];

    crypto_hash_sha512(hash, seed, 32);
    memcpy(sk, hash, 32);
    sodium_memzero(hash, sizeof hash);

    return crypto_scalarmult_curve25519_base(pk, sk);
}
