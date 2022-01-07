
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_box_curve25519xsalsa20poly1305_BEFORENMBYTES ;
 int crypto_box_curve25519xsalsa20poly1305_afternm (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char*) ;
 scalar_t__ crypto_box_curve25519xsalsa20poly1305_beforenm (unsigned char*,unsigned char const*,unsigned char const*) ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_box_curve25519xsalsa20poly1305(unsigned char *c, const unsigned char *m,
                                      unsigned long long mlen,
                                      const unsigned char *n,
                                      const unsigned char *pk,
                                      const unsigned char *sk)
{
    unsigned char k[crypto_box_curve25519xsalsa20poly1305_BEFORENMBYTES];
    int ret;

    if (crypto_box_curve25519xsalsa20poly1305_beforenm(k, pk, sk) != 0) {
        return -1;
    }
    ret = crypto_box_curve25519xsalsa20poly1305_afternm(c, m, mlen, n, k);
    sodium_memzero(k, sizeof k);

    return ret;
}
