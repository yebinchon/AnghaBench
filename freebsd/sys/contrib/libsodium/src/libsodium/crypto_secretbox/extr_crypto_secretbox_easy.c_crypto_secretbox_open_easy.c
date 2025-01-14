
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long crypto_secretbox_MACBYTES ;
 int crypto_secretbox_open_detached (unsigned char*,unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_secretbox_open_easy(unsigned char *m, const unsigned char *c,
                           unsigned long long clen, const unsigned char *n,
                           const unsigned char *k)
{
    if (clen < crypto_secretbox_MACBYTES) {
        return -1;
    }
    return crypto_secretbox_open_detached(m, c + crypto_secretbox_MACBYTES, c,
                                          clen - crypto_secretbox_MACBYTES,
                                          n, k);
}
