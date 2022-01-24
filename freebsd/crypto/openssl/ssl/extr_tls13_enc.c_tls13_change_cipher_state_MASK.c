#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  server_handshake_traffic ;
typedef  int /*<<< orphan*/  server_application_traffic ;
typedef  int /*<<< orphan*/  secret ;
typedef  int /*<<< orphan*/  resumption_master_secret ;
typedef  int /*<<< orphan*/  hashval ;
typedef  int /*<<< orphan*/  exporter_master_secret ;
typedef  int /*<<< orphan*/  early_exporter_master_secret ;
typedef  int /*<<< orphan*/  client_handshake_traffic ;
typedef  int /*<<< orphan*/  client_early_traffic ;
typedef  int /*<<< orphan*/  client_application_traffic ;
struct TYPE_22__ {int /*<<< orphan*/  enc_write_state; } ;
struct TYPE_25__ {unsigned char* read_iv; unsigned char* write_iv; unsigned char* early_secret; scalar_t__ early_data_state; scalar_t__ max_early_data; unsigned char* early_exporter_master_secret; unsigned char* handshake_secret; unsigned char* client_finished_secret; unsigned char* handshake_traffic_hash; unsigned char* master_secret; unsigned char* server_finished_hash; unsigned char* server_finished_secret; unsigned char* resumption_master_secret; unsigned char* server_app_traffic_secret; unsigned char* exporter_master_secret; unsigned char* client_app_traffic_secret; TYPE_3__ statem; int /*<<< orphan*/  server; TYPE_4__* s3; TYPE_17__* psksession; TYPE_17__* session; int /*<<< orphan*/  rlayer; int /*<<< orphan*/ * enc_write_ctx; int /*<<< orphan*/ * enc_read_ctx; } ;
struct TYPE_24__ {int /*<<< orphan*/  algorithm2; } ;
struct TYPE_21__ {int /*<<< orphan*/ * new_sym_enc; } ;
struct TYPE_23__ {TYPE_2__ tmp; int /*<<< orphan*/  handshake_buffer; } ;
struct TYPE_20__ {scalar_t__ max_early_data; } ;
struct TYPE_19__ {TYPE_1__ ext; } ;
typedef  TYPE_5__ SSL_CIPHER ;
typedef  TYPE_6__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,void**) ; 
 char* CLIENT_APPLICATION_LABEL ; 
 char* CLIENT_EARLY_LABEL ; 
 char* CLIENT_HANDSHAKE_LABEL ; 
 char const* EARLY_EXPORTER_SECRET_LABEL ; 
 int /*<<< orphan*/  ENC_WRITE_STATE_INVALID ; 
 int /*<<< orphan*/  ENC_WRITE_STATE_VALID ; 
 int /*<<< orphan*/  ENC_WRITE_STATE_WRITE_PLAIN_ALERTS ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,long) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 size_t FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 char const* EXPORTER_SECRET_LABEL ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* SERVER_APPLICATION_LABEL ; 
 char* SERVER_HANDSHAKE_LABEL ; 
 int SSL3_CC_CLIENT ; 
 int SSL3_CC_EARLY ; 
 int SSL3_CC_HANDSHAKE ; 
 int SSL3_CC_READ ; 
 int SSL3_CC_SERVER ; 
 int SSL3_CC_WRITE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__ const*) ; 
 scalar_t__ SSL_EARLY_DATA_CONNECTING ; 
 int /*<<< orphan*/  SSL_F_TLS13_CHANGE_CIPHER_STATE ; 
 int /*<<< orphan*/  SSL_R_BAD_HANDSHAKE_LENGTH ; 
 int /*<<< orphan*/  SSL_R_BAD_PSK ; 
 TYPE_5__* FUNC14 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned char*,unsigned char*,unsigned char const*,size_t,unsigned char*,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  const* FUNC21 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,char const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*,int /*<<< orphan*/  const*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*,int /*<<< orphan*/  const*,unsigned char*,unsigned char const*,int,unsigned char*,size_t,unsigned char*,size_t,int) ; 

int FUNC26(SSL *s, int which)
{
#ifdef CHARSET_EBCDIC
  static const unsigned char client_early_traffic[]       = {0x63, 0x20, 0x65, 0x20,       /*traffic*/0x74, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x00};
  static const unsigned char client_handshake_traffic[]   = {0x63, 0x20, 0x68, 0x73, 0x20, /*traffic*/0x74, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x00};
  static const unsigned char client_application_traffic[] = {0x63, 0x20, 0x61, 0x70, 0x20, /*traffic*/0x74, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x00};
  static const unsigned char server_handshake_traffic[]   = {0x73, 0x20, 0x68, 0x73, 0x20, /*traffic*/0x74, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x00};
  static const unsigned char server_application_traffic[] = {0x73, 0x20, 0x61, 0x70, 0x20, /*traffic*/0x74, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x00};
  static const unsigned char exporter_master_secret[] = {0x65, 0x78, 0x70, 0x20,                    /* master*/  0x6D, 0x61, 0x73, 0x74, 0x65, 0x72, 0x00};
  static const unsigned char resumption_master_secret[] = {0x72, 0x65, 0x73, 0x20,                  /* master*/  0x6D, 0x61, 0x73, 0x74, 0x65, 0x72, 0x00};
  static const unsigned char early_exporter_master_secret[] = {0x65, 0x20, 0x65, 0x78, 0x70, 0x20,  /* master*/  0x6D, 0x61, 0x73, 0x74, 0x65, 0x72, 0x00};
#else
    static const unsigned char client_early_traffic[] = "c e traffic";
    static const unsigned char client_handshake_traffic[] = "c hs traffic";
    static const unsigned char client_application_traffic[] = "c ap traffic";
    static const unsigned char server_handshake_traffic[] = "s hs traffic";
    static const unsigned char server_application_traffic[] = "s ap traffic";
    static const unsigned char exporter_master_secret[] = "exp master";
    static const unsigned char resumption_master_secret[] = "res master";
    static const unsigned char early_exporter_master_secret[] = "e exp master";
#endif
    unsigned char *iv;
    unsigned char secret[EVP_MAX_MD_SIZE];
    unsigned char hashval[EVP_MAX_MD_SIZE];
    unsigned char *hash = hashval;
    unsigned char *insecret;
    unsigned char *finsecret = NULL;
    const char *log_label = NULL;
    EVP_CIPHER_CTX *ciph_ctx;
    size_t finsecretlen = 0;
    const unsigned char *label;
    size_t labellen, hashlen = 0;
    int ret = 0;
    const EVP_MD *md = NULL;
    const EVP_CIPHER *cipher = NULL;

    if (which & SSL3_CC_READ) {
        if (s->enc_read_ctx != NULL) {
            FUNC2(s->enc_read_ctx);
        } else {
            s->enc_read_ctx = FUNC1();
            if (s->enc_read_ctx == NULL) {
                FUNC15(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
        ciph_ctx = s->enc_read_ctx;
        iv = s->read_iv;

        FUNC11(&s->rlayer);
    } else {
        s->statem.enc_write_state = ENC_WRITE_STATE_INVALID;
        if (s->enc_write_ctx != NULL) {
            FUNC2(s->enc_write_ctx);
        } else {
            s->enc_write_ctx = FUNC1();
            if (s->enc_write_ctx == NULL) {
                FUNC15(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
        ciph_ctx = s->enc_write_ctx;
        iv = s->write_iv;

        FUNC12(&s->rlayer);
    }

    if (((which & SSL3_CC_CLIENT) && (which & SSL3_CC_WRITE))
            || ((which & SSL3_CC_SERVER) && (which & SSL3_CC_READ))) {
        if (which & SSL3_CC_EARLY) {
            EVP_MD_CTX *mdctx = NULL;
            long handlen;
            void *hdata;
            unsigned int hashlenui;
            const SSL_CIPHER *sslcipher = FUNC14(s->session);

            insecret = s->early_secret;
            label = client_early_traffic;
            labellen = sizeof(client_early_traffic) - 1;
            log_label = CLIENT_EARLY_LABEL;

            handlen = FUNC0(s->s3->handshake_buffer, &hdata);
            if (handlen <= 0) {
                FUNC15(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE,
                         SSL_R_BAD_HANDSHAKE_LENGTH);
                goto err;
            }

            if (s->early_data_state == SSL_EARLY_DATA_CONNECTING
                    && s->max_early_data > 0
                    && s->session->ext.max_early_data == 0) {
                /*
                 * If we are attempting to send early data, and we've decided to
                 * actually do it but max_early_data in s->session is 0 then we
                 * must be using an external PSK.
                 */
                if (!FUNC18(s->psksession != NULL
                        && s->max_early_data ==
                           s->psksession->ext.max_early_data)) {
                    FUNC15(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS13_CHANGE_CIPHER_STATE,
                             ERR_R_INTERNAL_ERROR);
                    goto err;
                }
                sslcipher = FUNC14(s->psksession);
            }
            if (sslcipher == NULL) {
                FUNC15(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, SSL_R_BAD_PSK);
                goto err;
            }

            /*
             * We need to calculate the handshake digest using the digest from
             * the session. We haven't yet selected our ciphersuite so we can't
             * use ssl_handshake_md().
             */
            mdctx = FUNC7();
            if (mdctx == NULL) {
                FUNC15(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            cipher = FUNC9(FUNC13(sslcipher));
            md = FUNC23(sslcipher->algorithm2);
            if (md == NULL || !FUNC4(mdctx, md, NULL)
                    || !FUNC5(mdctx, hdata, handlen)
                    || !FUNC3(mdctx, hashval, &hashlenui)) {
                FUNC15(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_INTERNAL_ERROR);
                FUNC6(mdctx);
                goto err;
            }
            hashlen = hashlenui;
            FUNC6(mdctx);

            if (!FUNC25(s, md, insecret,
                                   early_exporter_master_secret,
                                   sizeof(early_exporter_master_secret) - 1,
                                   hashval, hashlen,
                                   s->early_exporter_master_secret, hashlen,
                                   1)) {
                FUNC15(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS13_CHANGE_CIPHER_STATE, ERR_R_INTERNAL_ERROR);
                goto err;
            }

            if (!FUNC22(s, EARLY_EXPORTER_SECRET_LABEL,
                                s->early_exporter_master_secret, hashlen)) {
                /* SSLfatal() already called */
                goto err;
            }
        } else if (which & SSL3_CC_HANDSHAKE) {
            insecret = s->handshake_secret;
            finsecret = s->client_finished_secret;
            finsecretlen = FUNC8(FUNC21(s));
            label = client_handshake_traffic;
            labellen = sizeof(client_handshake_traffic) - 1;
            log_label = CLIENT_HANDSHAKE_LABEL;
            /*
             * The handshake hash used for the server read/client write handshake
             * traffic secret is the same as the hash for the server
             * write/client read handshake traffic secret. However, if we
             * processed early data then we delay changing the server
             * read/client write cipher state until later, and the handshake
             * hashes have moved on. Therefore we use the value saved earlier
             * when we did the server write/client read change cipher state.
             */
            hash = s->handshake_traffic_hash;
        } else {
            insecret = s->master_secret;
            label = client_application_traffic;
            labellen = sizeof(client_application_traffic) - 1;
            log_label = CLIENT_APPLICATION_LABEL;
            /*
             * For this we only use the handshake hashes up until the server
             * Finished hash. We do not include the client's Finished, which is
             * what ssl_handshake_hash() would give us. Instead we use the
             * previously saved value.
             */
            hash = s->server_finished_hash;
        }
    } else {
        /* Early data never applies to client-read/server-write */
        if (which & SSL3_CC_HANDSHAKE) {
            insecret = s->handshake_secret;
            finsecret = s->server_finished_secret;
            finsecretlen = FUNC8(FUNC21(s));
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
        md = FUNC21(s);
        cipher = s->s3->tmp.new_sym_enc;
        if (!FUNC19(s, 1)
                || !FUNC20(s, hashval, sizeof(hashval), &hashlen)) {
            /* SSLfatal() already called */;
            goto err;
        }
    }

    /*
     * Save the hash of handshakes up to now for use when we calculate the
     * client application traffic secret
     */
    if (label == server_application_traffic)
        FUNC17(s->server_finished_hash, hashval, hashlen);

    if (label == server_handshake_traffic)
        FUNC17(s->handshake_traffic_hash, hashval, hashlen);

    if (label == client_application_traffic) {
        /*
         * We also create the resumption master secret, but this time use the
         * hash for the whole handshake including the Client Finished
         */
        if (!FUNC25(s, FUNC21(s), insecret,
                               resumption_master_secret,
                               sizeof(resumption_master_secret) - 1,
                               hashval, hashlen, s->resumption_master_secret,
                               hashlen, 1)) {
            /* SSLfatal() already called */
            goto err;
        }
    }

    if (!FUNC16(s, which & SSL3_CC_WRITE, md, cipher,
                                  insecret, hash, label, labellen, secret, iv,
                                  ciph_ctx)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (label == server_application_traffic) {
        FUNC17(s->server_app_traffic_secret, secret, hashlen);
        /* Now we create the exporter master secret */
        if (!FUNC25(s, FUNC21(s), insecret,
                               exporter_master_secret,
                               sizeof(exporter_master_secret) - 1,
                               hash, hashlen, s->exporter_master_secret,
                               hashlen, 1)) {
            /* SSLfatal() already called */
            goto err;
        }

        if (!FUNC22(s, EXPORTER_SECRET_LABEL, s->exporter_master_secret,
                            hashlen)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (label == client_application_traffic)
        FUNC17(s->client_app_traffic_secret, secret, hashlen);

    if (!FUNC22(s, log_label, secret, hashlen)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (finsecret != NULL
            && !FUNC24(s, FUNC21(s), secret,
                                         finsecret, finsecretlen)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (!s->server && label == client_early_traffic)
        s->statem.enc_write_state = ENC_WRITE_STATE_WRITE_PLAIN_ALERTS;
    else
        s->statem.enc_write_state = ENC_WRITE_STATE_VALID;
    ret = 1;
 err:
    FUNC10(secret, sizeof(secret));
    return ret;
}