
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_scalarmult_curve25519_base (unsigned char*,unsigned char*) ;
 int randombytes_buf (unsigned char*,int) ;

int
crypto_box_curve25519xchacha20poly1305_keypair(unsigned char *pk,
                                               unsigned char *sk)
{
    randombytes_buf(sk, 32);

    return crypto_scalarmult_curve25519_base(pk, sk);
}
