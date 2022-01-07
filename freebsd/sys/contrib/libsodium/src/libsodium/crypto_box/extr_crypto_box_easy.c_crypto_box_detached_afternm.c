
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_secretbox_detached (unsigned char*,unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_box_detached_afternm(unsigned char *c, unsigned char *mac,
                            const unsigned char *m, unsigned long long mlen,
                            const unsigned char *n, const unsigned char *k)
{
    return crypto_secretbox_detached(c, mac, m, mlen, n, k);
}
