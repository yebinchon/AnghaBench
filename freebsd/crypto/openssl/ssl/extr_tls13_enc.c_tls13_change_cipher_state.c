
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef int server_handshake_traffic ;
typedef int server_application_traffic ;
typedef int secret ;
typedef int resumption_master_secret ;
typedef int hashval ;
typedef int exporter_master_secret ;
typedef int early_exporter_master_secret ;
typedef int client_handshake_traffic ;
typedef int client_early_traffic ;
typedef int client_application_traffic ;
struct TYPE_22__ {int enc_write_state; } ;
struct TYPE_25__ {unsigned char* read_iv; unsigned char* write_iv; unsigned char* early_secret; scalar_t__ early_data_state; scalar_t__ max_early_data; unsigned char* early_exporter_master_secret; unsigned char* handshake_secret; unsigned char* client_finished_secret; unsigned char* handshake_traffic_hash; unsigned char* master_secret; unsigned char* server_finished_hash; unsigned char* server_finished_secret; unsigned char* resumption_master_secret; unsigned char* server_app_traffic_secret; unsigned char* exporter_master_secret; unsigned char* client_app_traffic_secret; TYPE_3__ statem; int server; TYPE_4__* s3; TYPE_17__* psksession; TYPE_17__* session; int rlayer; int * enc_write_ctx; int * enc_read_ctx; } ;
struct TYPE_24__ {int algorithm2; } ;
struct TYPE_21__ {int * new_sym_enc; } ;
struct TYPE_23__ {TYPE_2__ tmp; int handshake_buffer; } ;
struct TYPE_20__ {scalar_t__ max_early_data; } ;
struct TYPE_19__ {TYPE_1__ ext; } ;
typedef TYPE_5__ SSL_CIPHER ;
typedef TYPE_6__ SSL ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 long BIO_get_mem_data (int ,void**) ;
 char* CLIENT_APPLICATION_LABEL ;
 char* CLIENT_EARLY_LABEL ;
 char* CLIENT_HANDSHAKE_LABEL ;
 char const* EARLY_EXPORTER_SECRET_LABEL ;
 int ENC_WRITE_STATE_INVALID ;
 int ENC_WRITE_STATE_VALID ;
 int ENC_WRITE_STATE_WRITE_PLAIN_ALERTS ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 void* EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_reset (int *) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,void*,long) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 size_t EVP_MD_size (int const*) ;
 int * EVP_get_cipherbynid (int ) ;
 char const* EXPORTER_SECRET_LABEL ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int RECORD_LAYER_reset_read_sequence (int *) ;
 int RECORD_LAYER_reset_write_sequence (int *) ;
 char* SERVER_APPLICATION_LABEL ;
 char* SERVER_HANDSHAKE_LABEL ;
 int SSL3_CC_CLIENT ;
 int SSL3_CC_EARLY ;
 int SSL3_CC_HANDSHAKE ;
 int SSL3_CC_READ ;
 int SSL3_CC_SERVER ;
 int SSL3_CC_WRITE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_CIPHER_get_cipher_nid (TYPE_5__ const*) ;
 scalar_t__ SSL_EARLY_DATA_CONNECTING ;
 int SSL_F_TLS13_CHANGE_CIPHER_STATE ;
 int SSL_R_BAD_HANDSHAKE_LENGTH ;
 int SSL_R_BAD_PSK ;
 TYPE_5__* SSL_SESSION_get0_cipher (TYPE_17__*) ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int derive_secret_key_and_iv (TYPE_6__*,int,int const*,int const*,unsigned char*,unsigned char*,unsigned char const*,size_t,unsigned char*,unsigned char*,int *) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int ossl_assert (int) ;
 int ssl3_digest_cached_records (TYPE_6__*,int) ;
 int ssl_handshake_hash (TYPE_6__*,unsigned char*,int,size_t*) ;
 int const* ssl_handshake_md (TYPE_6__*) ;
 int ssl_log_secret (TYPE_6__*,char const*,unsigned char*,size_t) ;
 int * ssl_md (int ) ;
 int tls13_derive_finishedkey (TYPE_6__*,int const*,unsigned char*,unsigned char*,size_t) ;
 int tls13_hkdf_expand (TYPE_6__*,int const*,unsigned char*,unsigned char const*,int,unsigned char*,size_t,unsigned char*,size_t,int) ;

int tls13_change_cipher_state(SSL *s, int which)
{
    static const unsigned char client_early_traffic[] = "c e traffic";
    static const unsigned char client_handshake_traffic[] = "c hs traffic";
    static const unsigned char client_application_traffic[] = "c ap traffic";
    static const unsigned char server_handshake_traffic[] = "s hs traffic";
    static const unsigned char server_application_traffic[] = "s ap traffic";
    static const unsigned char exporter_master_secret[] = "exp master";
    static const unsigned char resumption_master_secret[] = "res master";
    static const unsigned char early_exporter_master_secret[] = "e exp master";

    unsigned char *iv;
    unsigned char secret[EVP_MAX_MD_SIZE];
    unsigned char hashval[EVP_MAX_MD_SIZE];
    unsigned char *hash = hashval;
    unsigned char *insecret;
    unsigned char *finsecret = ((void*)0);
    const char *log_label = ((void*)0);
    EVP_CIPHER_CTX *ciph_ctx;
    size_t finsecretlen = 0;
    const unsigned char *label;
    size_t labellen, hashlen = 0;
    int ret = 0;
    const EVP_MD *md = ((void*)0);
    const EVP_CIPHER *cipher = ((void*)0);

    if (which & SSL3_CC_READ) {
        if (s->enc_read_ctx != ((void*)0)) {
            EVP_CIPHER_CTX_reset(s->enc_read_ctx);
        } else {
            s->enc_read_ctx = EVP_CIPHER_CTX_new();
            if (s->enc_read_ctx == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
        ciph_ctx = s->enc_read_ctx;
        iv = s->read_iv;

        RECORD_LAYER_reset_read_sequence(&s->rlayer);
    } else {
        s->statem.enc_write_state = ENC_WRITE_STATE_INVALID;
        if (s->enc_write_ctx != ((void*)0)) {
            EVP_CIPHER_CTX_reset(s->enc_write_ctx);
        } else {
            s->enc_write_ctx = EVP_CIPHER_CTX_new();
            if (s->enc_write_ctx == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
        ciph_ctx = s->enc_write_ctx;
        iv = s->write_iv;

        RECORD_LAYER_reset_write_sequence(&s->rlayer);
    }

    if (((which & SSL3_CC_CLIENT) && (which & SSL3_CC_WRITE))
            || ((which & SSL3_CC_SERVER) && (which & SSL3_CC_READ))) {
        if (which & SSL3_CC_EARLY) {
            EVP_MD_CTX *mdctx = ((void*)0);
            long handlen;
            void *hdata;
            unsigned int hashlenui;
            const SSL_CIPHER *sslcipher = SSL_SESSION_get0_cipher(s->session);

            insecret = s->early_secret;
            label = client_early_traffic;
            labellen = sizeof(client_early_traffic) - 1;
            log_label = CLIENT_EARLY_LABEL;

            handlen = BIO_get_mem_data(s->s3->handshake_buffer, &hdata);
            if (handlen <= 0) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE,
                         SSL_R_BAD_HANDSHAKE_LENGTH);
                goto err;
            }

            if (s->early_data_state == SSL_EARLY_DATA_CONNECTING
                    && s->max_early_data > 0
                    && s->session->ext.max_early_data == 0) {





                if (!ossl_assert(s->psksession != ((void*)0)
                        && s->max_early_data ==
                           s->psksession->ext.max_early_data)) {
                    SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS13_CHANGE_CIPHER_STATE,
                             ERR_R_INTERNAL_ERROR);
                    goto err;
                }
                sslcipher = SSL_SESSION_get0_cipher(s->psksession);
            }
            if (sslcipher == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, SSL_R_BAD_PSK);
                goto err;
            }






            mdctx = EVP_MD_CTX_new();
            if (mdctx == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            cipher = EVP_get_cipherbynid(SSL_CIPHER_get_cipher_nid(sslcipher));
            md = ssl_md(sslcipher->algorithm2);
            if (md == ((void*)0) || !EVP_DigestInit_ex(mdctx, md, ((void*)0))
                    || !EVP_DigestUpdate(mdctx, hdata, handlen)
                    || !EVP_DigestFinal_ex(mdctx, hashval, &hashlenui)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_INTERNAL_ERROR);
                EVP_MD_CTX_free(mdctx);
                goto err;
            }
            hashlen = hashlenui;
            EVP_MD_CTX_free(mdctx);

            if (!tls13_hkdf_expand(s, md, insecret,
                                   early_exporter_master_secret,
                                   sizeof(early_exporter_master_secret) - 1,
                                   hashval, hashlen,
                                   s->early_exporter_master_secret, hashlen,
                                   1)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_INTERNAL_ERROR);
                goto err;
            }

            if (!ssl_log_secret(s, EARLY_EXPORTER_SECRET_LABEL,
                                s->early_exporter_master_secret, hashlen)) {

                goto err;
            }
        } else if (which & SSL3_CC_HANDSHAKE) {
            insecret = s->handshake_secret;
            finsecret = s->client_finished_secret;
            finsecretlen = EVP_MD_size(ssl_handshake_md(s));
            label = client_handshake_traffic;
            labellen = sizeof(client_handshake_traffic) - 1;
            log_label = CLIENT_HANDSHAKE_LABEL;
            hash = s->handshake_traffic_hash;
        } else {
            insecret = s->master_secret;
            label = client_application_traffic;
            labellen = sizeof(client_application_traffic) - 1;
            log_label = CLIENT_APPLICATION_LABEL;






            hash = s->server_finished_hash;
        }
    } else {

        if (which & SSL3_CC_HANDSHAKE) {
            insecret = s->handshake_secret;
            finsecret = s->server_finished_secret;
            finsecretlen = EVP_MD_size(ssl_handshake_md(s));
            label = server_handshake_traffic;
            labellen = sizeof(server_handshake_traffic) - 1;
            log_label = SERVER_HANDSHAKE_LABEL;
        } else {
            insecret = s->master_secret;
            label = server_application_traffic;
            labellen = sizeof(server_application_traffic) - 1;
            log_label = SERVER_APPLICATION_LABEL;
        }
    }

    if (!(which & SSL3_CC_EARLY)) {
        md = ssl_handshake_md(s);
        cipher = s->s3->tmp.new_sym_enc;
        if (!ssl3_digest_cached_records(s, 1)
                || !ssl_handshake_hash(s, hashval, sizeof(hashval), &hashlen)) {
                                           ;
            goto err;
        }
    }





    if (label == server_application_traffic)
        memcpy(s->server_finished_hash, hashval, hashlen);

    if (label == server_handshake_traffic)
        memcpy(s->handshake_traffic_hash, hashval, hashlen);

    if (label == client_application_traffic) {




        if (!tls13_hkdf_expand(s, ssl_handshake_md(s), insecret,
                               resumption_master_secret,
                               sizeof(resumption_master_secret) - 1,
                               hashval, hashlen, s->resumption_master_secret,
                               hashlen, 1)) {

            goto err;
        }
    }

    if (!derive_secret_key_and_iv(s, which & SSL3_CC_WRITE, md, cipher,
                                  insecret, hash, label, labellen, secret, iv,
                                  ciph_ctx)) {

        goto err;
    }

    if (label == server_application_traffic) {
        memcpy(s->server_app_traffic_secret, secret, hashlen);

        if (!tls13_hkdf_expand(s, ssl_handshake_md(s), insecret,
                               exporter_master_secret,
                               sizeof(exporter_master_secret) - 1,
                               hash, hashlen, s->exporter_master_secret,
                               hashlen, 1)) {

            goto err;
        }

        if (!ssl_log_secret(s, EXPORTER_SECRET_LABEL, s->exporter_master_secret,
                            hashlen)) {

            goto err;
        }
    } else if (label == client_application_traffic)
        memcpy(s->client_app_traffic_secret, secret, hashlen);

    if (!ssl_log_secret(s, log_label, secret, hashlen)) {

        goto err;
    }

    if (finsecret != ((void*)0)
            && !tls13_derive_finishedkey(s, ssl_handshake_md(s), secret,
                                         finsecret, finsecretlen)) {

        goto err;
    }

    if (!s->server && label == client_early_traffic)
        s->statem.enc_write_state = ENC_WRITE_STATE_WRITE_PLAIN_ALERTS;
    else
        s->statem.enc_write_state = ENC_WRITE_STATE_VALID;
    ret = 1;
 err:
    OPENSSL_cleanse(secret, sizeof(secret));
    return ret;
}
