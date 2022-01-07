
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519_detached (unsigned char*,unsigned long long*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_sign_detached(unsigned char *sig, unsigned long long *siglen_p,
                     const unsigned char *m, unsigned long long mlen,
                     const unsigned char *sk)
{
    return crypto_sign_ed25519_detached(sig, siglen_p, m, mlen, sk);
}
