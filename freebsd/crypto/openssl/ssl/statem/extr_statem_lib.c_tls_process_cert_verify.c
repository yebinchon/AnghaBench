
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_16__ {scalar_t__ version; TYPE_3__* s3; int server; TYPE_1__* session; } ;
struct TYPE_14__ {int cert_req; int peer_sigalg; } ;
struct TYPE_15__ {int * handshake_buffer; TYPE_2__ tmp; } ;
struct TYPE_13__ {int master_key; scalar_t__ master_key_length; int * peer; } ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int BIO_free (int *) ;
 int BUF_reverse (unsigned char*,unsigned char const*,unsigned int) ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_CTRL_SSL3_MASTER_SECRET ;
 int EVP_DigestVerify (int *,unsigned char const*,unsigned int,void*,size_t) ;
 scalar_t__ EVP_DigestVerifyFinal (int *,unsigned char const*,unsigned int) ;
 scalar_t__ EVP_DigestVerifyInit (int *,int **,int const*,int *,int *) ;
 scalar_t__ EVP_DigestVerifyUpdate (int *,void*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_ctrl (int *,int ,int,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 char* EVP_MD_name (int const*) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_padding (int *,int ) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_pss_saltlen (int *,int ) ;
 int EVP_PKEY_id (int *) ;
 int EVP_PKEY_size (int *) ;
 int MSG_PROCESS_CONTINUE_PROCESSING ;
 int MSG_PROCESS_CONTINUE_READING ;
 int MSG_PROCESS_ERROR ;
 int NID_id_GostR3410_2001 ;
 int NID_id_GostR3410_2012_256 ;
 int NID_id_GostR3410_2012_512 ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (unsigned int) ;
 int PACKET_get_bytes (int *,unsigned char const**,unsigned int) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_remaining (int *) ;
 int RSA_PKCS1_PSS_PADDING ;
 int RSA_PSS_SALTLEN_DIGEST ;
 scalar_t__ SSL3_VERSION ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_DECRYPT_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_CERT_VERIFY ;
 scalar_t__ SSL_IS_TLS13 (TYPE_4__*) ;
 int SSL_R_BAD_PACKET ;
 int SSL_R_BAD_SIGNATURE ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE ;
 int SSL_R_WRONG_SIGNATURE_SIZE ;
 scalar_t__ SSL_USE_PSS (TYPE_4__*) ;
 scalar_t__ SSL_USE_SIGALGS (TYPE_4__*) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int TLS13_TBS_PREAMBLE_SIZE ;
 int * X509_get0_pubkey (int *) ;
 int fprintf (int ,char*,char*) ;
 int get_cert_verify_tbs_data (TYPE_4__*,unsigned char*,void**,size_t*) ;
 int * ssl_cert_lookup_by_pkey (int *,int *) ;
 int stderr ;
 scalar_t__ tls12_check_peer_sigalg (TYPE_4__*,unsigned int,int *) ;
 int tls1_lookup_md (int ,int const**) ;
 int tls1_set_peer_legacy_sigalg (TYPE_4__*,int *) ;

MSG_PROCESS_RETURN tls_process_cert_verify(SSL *s, PACKET *pkt)
{
    EVP_PKEY *pkey = ((void*)0);
    const unsigned char *data;

    unsigned char *gost_data = ((void*)0);

    MSG_PROCESS_RETURN ret = MSG_PROCESS_ERROR;
    int j;
    unsigned int len;
    X509 *peer;
    const EVP_MD *md = ((void*)0);
    size_t hdatalen = 0;
    void *hdata;
    unsigned char tls13tbs[TLS13_TBS_PREAMBLE_SIZE + EVP_MAX_MD_SIZE];
    EVP_MD_CTX *mctx = EVP_MD_CTX_new();
    EVP_PKEY_CTX *pctx = ((void*)0);

    if (mctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    peer = s->session->peer;
    pkey = X509_get0_pubkey(peer);
    if (pkey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (ssl_cert_lookup_by_pkey(pkey, ((void*)0)) == ((void*)0)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE);
        goto err;
    }

    if (SSL_USE_SIGALGS(s)) {
        unsigned int sigalg;

        if (!PACKET_get_net_2(pkt, &sigalg)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     SSL_R_BAD_PACKET);
            goto err;
        }
        if (tls12_check_peer_sigalg(s, sigalg, pkey) <= 0) {

            goto err;
        }
    } else if (!tls1_set_peer_legacy_sigalg(s, pkey)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     ERR_R_INTERNAL_ERROR);
            goto err;
    }

    if (!tls1_lookup_md(s->s3->tmp.peer_sigalg, &md)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if (!SSL_USE_SIGALGS(s)
        && ((PACKET_remaining(pkt) == 64
             && (EVP_PKEY_id(pkey) == NID_id_GostR3410_2001
                 || EVP_PKEY_id(pkey) == NID_id_GostR3410_2012_256))
            || (PACKET_remaining(pkt) == 128
                && EVP_PKEY_id(pkey) == NID_id_GostR3410_2012_512))) {
        len = PACKET_remaining(pkt);
    } else

    if (!PACKET_get_net_2(pkt, &len)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    j = EVP_PKEY_size(pkey);
    if (((int)len > j) || ((int)PACKET_remaining(pkt) > j)
        || (PACKET_remaining(pkt) == 0)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_WRONG_SIGNATURE_SIZE);
        goto err;
    }
    if (!PACKET_get_bytes(pkt, &data, len)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    if (!get_cert_verify_tbs_data(s, tls13tbs, &hdata, &hdatalen)) {

        goto err;
    }





    if (EVP_DigestVerifyInit(mctx, &pctx, md, ((void*)0), pkey) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_EVP_LIB);
        goto err;
    }

    {
        int pktype = EVP_PKEY_id(pkey);
        if (pktype == NID_id_GostR3410_2001
            || pktype == NID_id_GostR3410_2012_256
            || pktype == NID_id_GostR3410_2012_512) {
            if ((gost_data = OPENSSL_malloc(len)) == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_PROCESS_CERT_VERIFY, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            BUF_reverse(gost_data, data, len);
            data = gost_data;
        }
    }


    if (SSL_USE_PSS(s)) {
        if (EVP_PKEY_CTX_set_rsa_padding(pctx, RSA_PKCS1_PSS_PADDING) <= 0
            || EVP_PKEY_CTX_set_rsa_pss_saltlen(pctx,
                                                RSA_PSS_SALTLEN_DIGEST) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
    }
    if (s->version == SSL3_VERSION) {
        if (EVP_DigestVerifyUpdate(mctx, hdata, hdatalen) <= 0
                || !EVP_MD_CTX_ctrl(mctx, EVP_CTRL_SSL3_MASTER_SECRET,
                                    (int)s->session->master_key_length,
                                    s->session->master_key)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
        if (EVP_DigestVerifyFinal(mctx, data, len) <= 0) {
            SSLfatal(s, SSL_AD_DECRYPT_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     SSL_R_BAD_SIGNATURE);
            goto err;
        }
    } else {
        j = EVP_DigestVerify(mctx, data, len, hdata, hdatalen);
        if (j <= 0) {
            SSLfatal(s, SSL_AD_DECRYPT_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     SSL_R_BAD_SIGNATURE);
            goto err;
        }
    }
    if (!s->server && SSL_IS_TLS13(s) && s->s3->tmp.cert_req == 1)
        ret = MSG_PROCESS_CONTINUE_PROCESSING;
    else
        ret = MSG_PROCESS_CONTINUE_READING;
 err:
    BIO_free(s->s3->handshake_buffer);
    s->s3->handshake_buffer = ((void*)0);
    EVP_MD_CTX_free(mctx);

    OPENSSL_free(gost_data);

    return ret;
}
