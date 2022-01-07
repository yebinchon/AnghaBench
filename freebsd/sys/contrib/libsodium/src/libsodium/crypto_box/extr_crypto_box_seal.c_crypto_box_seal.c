
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _crypto_box_seal_nonce (unsigned char*,unsigned char*,unsigned char const*) ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 int crypto_box_easy (unsigned char*,unsigned char const*,unsigned long long,unsigned char*,unsigned char const*,unsigned char*) ;
 scalar_t__ crypto_box_keypair (unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_box_seal(unsigned char *c, const unsigned char *m,
                unsigned long long mlen, const unsigned char *pk)
{
    unsigned char nonce[crypto_box_NONCEBYTES];
    unsigned char epk[crypto_box_PUBLICKEYBYTES];
    unsigned char esk[crypto_box_SECRETKEYBYTES];
    int ret;

    if (crypto_box_keypair(epk, esk) != 0) {
        return -1;
    }
    memcpy(c, epk, crypto_box_PUBLICKEYBYTES);
    _crypto_box_seal_nonce(nonce, epk, pk);
    ret = crypto_box_easy(c + crypto_box_PUBLICKEYBYTES, m, mlen,
                          nonce, pk, esk);
    sodium_memzero(esk, sizeof esk);
    sodium_memzero(epk, sizeof epk);
    sodium_memzero(nonce, sizeof nonce);

    return ret;
}
