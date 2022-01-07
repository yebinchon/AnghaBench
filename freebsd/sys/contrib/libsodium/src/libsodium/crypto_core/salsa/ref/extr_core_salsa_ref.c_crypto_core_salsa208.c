
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_core_salsa (unsigned char*,unsigned char const*,unsigned char const*,unsigned char const*,int) ;

int
crypto_core_salsa208(unsigned char *out, const unsigned char *in,
                     const unsigned char *k, const unsigned char *c)
{
    crypto_core_salsa(out, in, k, c, 8);
    return 0;
}
