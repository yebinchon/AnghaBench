
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_onetimeauth_poly1305_verify (unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_onetimeauth_verify(const unsigned char *h, const unsigned char *in,
                          unsigned long long inlen, const unsigned char *k)
{
    return crypto_onetimeauth_poly1305_verify(h, in, inlen, k);
}
