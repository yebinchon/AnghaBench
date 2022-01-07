
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long crypto_sign_ed25519_MESSAGEBYTES_MAX ;
 scalar_t__ crypto_sign_ed25519_verify_detached (unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*) ;
 int memmove (unsigned char*,unsigned char const*,unsigned long long) ;
 int memset (unsigned char*,int ,unsigned long long) ;

int
crypto_sign_ed25519_open(unsigned char *m, unsigned long long *mlen_p,
                         const unsigned char *sm, unsigned long long smlen,
                         const unsigned char *pk)
{
    unsigned long long mlen;

    if (smlen < 64 || smlen - 64 > crypto_sign_ed25519_MESSAGEBYTES_MAX) {
        goto badsig;
    }
    mlen = smlen - 64;
    if (crypto_sign_ed25519_verify_detached(sm, sm + 64, mlen, pk) != 0) {
        memset(m, 0, mlen);
        goto badsig;
    }
    if (mlen_p != ((void*)0)) {
        *mlen_p = mlen;
    }
    memmove(m, sm + 64, mlen);

    return 0;

badsig:
    if (mlen_p != ((void*)0)) {
        *mlen_p = 0;
    }
    return -1;
}
