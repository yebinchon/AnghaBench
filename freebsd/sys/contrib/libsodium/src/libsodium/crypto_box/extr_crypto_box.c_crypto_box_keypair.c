
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_box_curve25519xsalsa20poly1305_keypair (unsigned char*,unsigned char*) ;

int
crypto_box_keypair(unsigned char *pk, unsigned char *sk)
{
    return crypto_box_curve25519xsalsa20poly1305_keypair(pk, sk);
}
