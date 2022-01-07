
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_secretbox_open_detached (unsigned char*,unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_box_open_detached_afternm(unsigned char *m, const unsigned char *c,
                                 const unsigned char *mac,
                                 unsigned long long clen,
                                 const unsigned char *n,
                                 const unsigned char *k)
{
    return crypto_secretbox_open_detached(m, c, mac, clen, n, k);
}
