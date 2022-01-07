
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_stream_xsalsa20 (unsigned char*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_stream(unsigned char *c, unsigned long long clen,
              const unsigned char *n, const unsigned char *k)
{
    return crypto_stream_xsalsa20(c, clen, n, k);
}
