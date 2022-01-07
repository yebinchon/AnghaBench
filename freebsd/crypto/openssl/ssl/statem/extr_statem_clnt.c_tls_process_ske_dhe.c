
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* session; TYPE_3__* s3; } ;
struct TYPE_12__ {int peer; } ;
struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; int * peer_tmp; } ;
struct TYPE_9__ {int algorithm_auth; } ;
typedef TYPE_5__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY ;
typedef int DH ;
typedef int BIGNUM ;


 int * BN_bin2bn (int ,int,int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 scalar_t__ DH_check_params (int *,int*) ;
 int DH_free (int *) ;
 int * DH_new () ;
 int DH_security_bits (int *) ;
 int DH_set0_key (int *,int *,int *) ;
 int DH_set0_pqg (int *,int *,int *,int *) ;
 int ERR_R_BN_LIB ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_PKEY_assign_DH (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int PACKET_data (int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_SKE_DHE ;
 int SSL_R_BAD_DH_VALUE ;
 int SSL_R_DH_KEY_TOO_SMALL ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_SECOP_TMP_DH ;
 int SSL_aDSS ;
 int SSL_aRSA ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int * X509_get0_pubkey (int ) ;
 int ssl_security (TYPE_5__*,int ,int ,int ,int *) ;

__attribute__((used)) static int tls_process_ske_dhe(SSL *s, PACKET *pkt, EVP_PKEY **pkey)
{

    PACKET prime, generator, pub_key;
    EVP_PKEY *peer_tmp = ((void*)0);

    DH *dh = ((void*)0);
    BIGNUM *p = ((void*)0), *g = ((void*)0), *bnpub_key = ((void*)0);

    int check_bits = 0;

    if (!PACKET_get_length_prefixed_2(pkt, &prime)
        || !PACKET_get_length_prefixed_2(pkt, &generator)
        || !PACKET_get_length_prefixed_2(pkt, &pub_key)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    peer_tmp = EVP_PKEY_new();
    dh = DH_new();

    if (peer_tmp == ((void*)0) || dh == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }


    p = BN_bin2bn(PACKET_data(&prime), (int)PACKET_remaining(&prime), ((void*)0));
    g = BN_bin2bn(PACKET_data(&generator), (int)PACKET_remaining(&generator),
                  ((void*)0));
    bnpub_key = BN_bin2bn(PACKET_data(&pub_key),
                          (int)PACKET_remaining(&pub_key), ((void*)0));
    if (p == ((void*)0) || g == ((void*)0) || bnpub_key == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_BN_LIB);
        goto err;
    }


    if (BN_is_zero(bnpub_key)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_BAD_DH_VALUE);
        goto err;
    }

    if (!DH_set0_pqg(dh, p, ((void*)0), g)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_BN_LIB);
        goto err;
    }
    p = g = ((void*)0);

    if (DH_check_params(dh, &check_bits) == 0 || check_bits != 0) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_BAD_DH_VALUE);
        goto err;
    }

    if (!DH_set0_key(dh, bnpub_key, ((void*)0))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_BN_LIB);
        goto err;
    }
    bnpub_key = ((void*)0);

    if (!ssl_security(s, SSL_SECOP_TMP_DH, DH_security_bits(dh), 0, dh)) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_DH_KEY_TOO_SMALL);
        goto err;
    }

    if (EVP_PKEY_assign_DH(peer_tmp, dh) == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_EVP_LIB);
        goto err;
    }

    s->s3->peer_tmp = peer_tmp;





    if (s->s3->tmp.new_cipher->algorithm_auth & (SSL_aRSA | SSL_aDSS))
        *pkey = X509_get0_pubkey(s->session->peer);


    return 1;

 err:
    BN_free(p);
    BN_free(g);
    BN_free(bnpub_key);
    DH_free(dh);
    EVP_PKEY_free(peer_tmp);

    return 0;





}
