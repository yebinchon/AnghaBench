
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519_keypair (unsigned char*,unsigned char*) ;

int
crypto_sign_keypair(unsigned char *pk, unsigned char *sk)
{
    return crypto_sign_ed25519_keypair(pk, sk);
}
