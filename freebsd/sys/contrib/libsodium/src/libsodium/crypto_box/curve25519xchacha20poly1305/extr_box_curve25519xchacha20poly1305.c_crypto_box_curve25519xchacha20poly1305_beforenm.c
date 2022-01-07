
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_core_hchacha20 (unsigned char*,unsigned char const*,unsigned char*,int *) ;
 scalar_t__ crypto_scalarmult_curve25519 (unsigned char*,unsigned char const*,unsigned char const*) ;

int
crypto_box_curve25519xchacha20poly1305_beforenm(unsigned char *k,
                                                const unsigned char *pk,
                                                const unsigned char *sk)
{
    static const unsigned char zero[16] = { 0 };
    unsigned char s[32];

    if (crypto_scalarmult_curve25519(s, sk, pk) != 0) {
        return -1;
    }
    return crypto_core_hchacha20(k, zero, s, ((void*)0));
}
