
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int SSL ;
typedef int SIGALG_LOOKUP ;


 int SSL_SECOP_SIGALG_SHARED ;
 int tls12_sigalg_allowed (int *,int ,int const*) ;
 int * tls1_lookup_sigalg (scalar_t__ const) ;

__attribute__((used)) static size_t tls12_shared_sigalgs(SSL *s, const SIGALG_LOOKUP **shsig,
                                   const uint16_t *pref, size_t preflen,
                                   const uint16_t *allow, size_t allowlen)
{
    const uint16_t *ptmp, *atmp;
    size_t i, j, nmatch = 0;
    for (i = 0, ptmp = pref; i < preflen; i++, ptmp++) {
        const SIGALG_LOOKUP *lu = tls1_lookup_sigalg(*ptmp);


        if (!tls12_sigalg_allowed(s, SSL_SECOP_SIGALG_SHARED, lu))
            continue;
        for (j = 0, atmp = allow; j < allowlen; j++, atmp++) {
            if (*ptmp == *atmp) {
                nmatch++;
                if (shsig)
                    *shsig++ = lu;
                break;
            }
        }
    }
    return nmatch;
}
