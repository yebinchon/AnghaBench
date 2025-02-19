
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long crypto_aead_chacha20poly1305_ABYTES ;
 int crypto_aead_chacha20poly1305_decrypt_detached (unsigned char*,unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_aead_chacha20poly1305_decrypt(unsigned char *m,
                                     unsigned long long *mlen_p,
                                     unsigned char *nsec,
                                     const unsigned char *c,
                                     unsigned long long clen,
                                     const unsigned char *ad,
                                     unsigned long long adlen,
                                     const unsigned char *npub,
                                     const unsigned char *k)
{
    unsigned long long mlen = 0ULL;
    int ret = -1;

    if (clen >= crypto_aead_chacha20poly1305_ABYTES) {
        ret = crypto_aead_chacha20poly1305_decrypt_detached
            (m, nsec,
             c, clen - crypto_aead_chacha20poly1305_ABYTES,
             c + clen - crypto_aead_chacha20poly1305_ABYTES,
             ad, adlen, npub, k);
    }
    if (mlen_p != ((void*)0)) {
        if (ret == 0) {
            mlen = clen - crypto_aead_chacha20poly1305_ABYTES;
        }
        *mlen_p = mlen;
    }
    return ret;
}
