
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_16__ {TYPE_3__* s3; } ;
struct TYPE_14__ {int * psk; int psklen; int * pms; int pmslen; TYPE_1__* new_cipher; } ;
struct TYPE_15__ {TYPE_2__ tmp; } ;
struct TYPE_13__ {unsigned long algorithm_mkey; } ;
typedef TYPE_4__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_clear_free (int *,int ) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CLIENT_KEY_EXCHANGE ;
 unsigned long SSL_PSK ;
 unsigned long SSL_kDHE ;
 unsigned long SSL_kDHEPSK ;
 unsigned long SSL_kECDHE ;
 unsigned long SSL_kECDHEPSK ;
 unsigned long SSL_kGOST ;
 unsigned long SSL_kPSK ;
 unsigned long SSL_kRSA ;
 unsigned long SSL_kRSAPSK ;
 unsigned long SSL_kSRP ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int tls_construct_cke_dhe (TYPE_4__*,int *) ;
 int tls_construct_cke_ecdhe (TYPE_4__*,int *) ;
 int tls_construct_cke_gost (TYPE_4__*,int *) ;
 int tls_construct_cke_psk_preamble (TYPE_4__*,int *) ;
 int tls_construct_cke_rsa (TYPE_4__*,int *) ;
 int tls_construct_cke_srp (TYPE_4__*,int *) ;

int tls_construct_client_key_exchange(SSL *s, WPACKET *pkt)
{
    unsigned long alg_k;

    alg_k = s->s3->tmp.new_cipher->algorithm_mkey;





    if ((alg_k & SSL_PSK)
        && !tls_construct_cke_psk_preamble(s, pkt))
        goto err;

    if (alg_k & (SSL_kRSA | SSL_kRSAPSK)) {
        if (!tls_construct_cke_rsa(s, pkt))
            goto err;
    } else if (alg_k & (SSL_kDHE | SSL_kDHEPSK)) {
        if (!tls_construct_cke_dhe(s, pkt))
            goto err;
    } else if (alg_k & (SSL_kECDHE | SSL_kECDHEPSK)) {
        if (!tls_construct_cke_ecdhe(s, pkt))
            goto err;
    } else if (alg_k & SSL_kGOST) {
        if (!tls_construct_cke_gost(s, pkt))
            goto err;
    } else if (alg_k & SSL_kSRP) {
        if (!tls_construct_cke_srp(s, pkt))
            goto err;
    } else if (!(alg_k & SSL_kPSK)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CLIENT_KEY_EXCHANGE, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    return 1;
 err:
    OPENSSL_clear_free(s->s3->tmp.pms, s->s3->tmp.pmslen);
    s->s3->tmp.pms = ((void*)0);

    OPENSSL_clear_free(s->s3->tmp.psk, s->s3->tmp.psklen);
    s->s3->tmp.psk = ((void*)0);

    return 0;
}
