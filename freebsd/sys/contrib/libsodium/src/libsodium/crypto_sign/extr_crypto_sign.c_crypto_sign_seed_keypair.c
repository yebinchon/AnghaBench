
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519_seed_keypair (unsigned char*,unsigned char*,unsigned char const*) ;

int
crypto_sign_seed_keypair(unsigned char *pk, unsigned char *sk,
                         const unsigned char *seed)
{
    return crypto_sign_ed25519_seed_keypair(pk, sk, seed);
}
