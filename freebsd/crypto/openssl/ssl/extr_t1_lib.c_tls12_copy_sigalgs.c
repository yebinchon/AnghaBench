
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int WPACKET ;
struct TYPE_4__ {scalar_t__ sig; scalar_t__ hash; } ;
typedef int SSL ;
typedef TYPE_1__ SIGALG_LOOKUP ;


 scalar_t__ EVP_PKEY_RSA ;
 scalar_t__ NID_sha1 ;
 scalar_t__ NID_sha224 ;
 int SSL_F_TLS12_COPY_SIGALGS ;
 int SSL_IS_TLS13 (int *) ;
 int SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM ;
 int SSL_SECOP_SIGALG_SUPPORTED ;
 int SSLerr (int ,int ) ;
 int WPACKET_put_bytes_u16 (int *,int const) ;
 int tls12_sigalg_allowed (int *,int ,TYPE_1__ const*) ;
 TYPE_1__* tls1_lookup_sigalg (int const) ;

int tls12_copy_sigalgs(SSL *s, WPACKET *pkt,
                       const uint16_t *psig, size_t psiglen)
{
    size_t i;
    int rv = 0;

    for (i = 0; i < psiglen; i++, psig++) {
        const SIGALG_LOOKUP *lu = tls1_lookup_sigalg(*psig);

        if (!tls12_sigalg_allowed(s, SSL_SECOP_SIGALG_SUPPORTED, lu))
            continue;
        if (!WPACKET_put_bytes_u16(pkt, *psig))
            return 0;




        if (rv == 0 && (!SSL_IS_TLS13(s)
            || (lu->sig != EVP_PKEY_RSA
                && lu->hash != NID_sha1
                && lu->hash != NID_sha224)))
            rv = 1;
    }
    if (rv == 0)
        SSLerr(SSL_F_TLS12_COPY_SIGALGS, SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM);
    return rv;
}
