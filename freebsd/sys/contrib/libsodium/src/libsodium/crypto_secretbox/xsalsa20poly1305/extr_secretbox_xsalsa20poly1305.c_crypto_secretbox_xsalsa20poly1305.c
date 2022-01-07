
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_onetimeauth_poly1305 (unsigned char*,unsigned char*,unsigned long long,unsigned char*) ;
 int crypto_stream_xsalsa20_xor (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_secretbox_xsalsa20poly1305(unsigned char *c, const unsigned char *m,
                                  unsigned long long mlen,
                                  const unsigned char *n,
                                  const unsigned char *k)
{
    int i;

    if (mlen < 32) {
        return -1;
    }
    crypto_stream_xsalsa20_xor(c, m, mlen, n, k);
    crypto_onetimeauth_poly1305(c + 16, c + 32, mlen - 32, c);
    for (i = 0; i < 16; ++i) {
        c[i] = 0;
    }
    return 0;
}
