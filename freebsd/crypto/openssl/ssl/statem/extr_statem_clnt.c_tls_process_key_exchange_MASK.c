#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_3__* s3; } ;
struct TYPE_18__ {TYPE_1__* new_cipher; int /*<<< orphan*/  peer_sigalg; } ;
struct TYPE_19__ {TYPE_2__ tmp; int /*<<< orphan*/ * peer_tmp; } ;
struct TYPE_17__ {long algorithm_mkey; int algorithm_auth; } ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,unsigned char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_READING ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_PKCS1_PSS_PADDING ; 
 int /*<<< orphan*/  RSA_PSS_SALTLEN_DIGEST ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_DECRYPT_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_KEY_EXCHANGE ; 
 long SSL_PSK ; 
 int /*<<< orphan*/  SSL_R_BAD_DATA ; 
 int /*<<< orphan*/  SSL_R_BAD_SIGNATURE ; 
 int /*<<< orphan*/  SSL_R_EXTRA_DATA_IN_MESSAGE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_LENGTH_TOO_SHORT ; 
 int /*<<< orphan*/  SSL_R_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  SSL_R_WRONG_SIGNATURE_LENGTH ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 int SSL_aNULL ; 
 int SSL_aSRP ; 
 long SSL_kDHE ; 
 long SSL_kDHEPSK ; 
 long SSL_kECDHE ; 
 long SSL_kECDHEPSK ; 
 long SSL_kPSK ; 
 long SSL_kRSAPSK ; 
 long SSL_kSRP ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC18 (TYPE_4__*,unsigned char**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC21 (TYPE_4__*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

MSG_PROCESS_RETURN FUNC28(SSL *s, PACKET *pkt)
{
    long alg_k;
    EVP_PKEY *pkey = NULL;
    EVP_MD_CTX *md_ctx = NULL;
    EVP_PKEY_CTX *pctx = NULL;
    PACKET save_param_start, signature;

    alg_k = s->s3->tmp.new_cipher->algorithm_mkey;

    save_param_start = *pkt;

#if !defined(OPENSSL_NO_EC) || !defined(OPENSSL_NO_DH)
    FUNC7(s->s3->peer_tmp);
    s->s3->peer_tmp = NULL;
#endif

    if (alg_k & SSL_PSK) {
        if (!FUNC26(s, pkt)) {
            /* SSLfatal() already called */
            goto err;
        }
    }

    /* Nothing else to do for plain PSK or RSAPSK */
    if (alg_k & (SSL_kPSK | SSL_kRSAPSK)) {
    } else if (alg_k & SSL_kSRP) {
        if (!FUNC27(s, pkt, &pkey)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k & (SSL_kDHE | SSL_kDHEPSK)) {
        if (!FUNC24(s, pkt, &pkey)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k & (SSL_kECDHE | SSL_kECDHEPSK)) {
        if (!FUNC25(s, pkt, &pkey)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k) {
        FUNC17(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                 SSL_R_UNEXPECTED_MESSAGE);
        goto err;
    }

    /* if it was signed, check the signature */
    if (pkey != NULL) {
        PACKET params;
        int maxsig;
        const EVP_MD *md = NULL;
        unsigned char *tbs;
        size_t tbslen;
        int rv;

        /*
         * |pkt| now points to the beginning of the signature, so the difference
         * equals the length of the parameters.
         */
        if (!FUNC13(&save_param_start, &params,
                                   FUNC14(&save_param_start) -
                                   FUNC14(pkt))) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        if (FUNC16(s)) {
            unsigned int sigalg;

            if (!FUNC12(pkt, &sigalg)) {
                FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                         SSL_R_LENGTH_TOO_SHORT);
                goto err;
            }
            if (FUNC21(s, sigalg, pkey) <=0) {
                /* SSLfatal() already called */
                goto err;
            }
        } else if (!FUNC23(s, pkey)) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        if (!FUNC22(s->s3->tmp.peer_sigalg, &md)) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
#ifdef SSL_DEBUG
        if (SSL_USE_SIGALGS(s))
            fprintf(stderr, "USING TLSv1.2 HASH %s\n",
                    md == NULL ? "n/a" : EVP_MD_name(md));
#endif

        if (!FUNC11(pkt, &signature)
            || FUNC14(pkt) != 0) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }
        maxsig = FUNC8(pkey);
        if (maxsig < 0) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        /*
         * Check signature length
         */
        if (FUNC14(&signature) > (size_t)maxsig) {
            /* wrong packet length */
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                   SSL_R_WRONG_SIGNATURE_LENGTH);
            goto err;
        }

        md_ctx = FUNC3();
        if (md_ctx == NULL) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        }

        if (FUNC1(md_ctx, &pctx, md, NULL, pkey) <= 0) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     ERR_R_EVP_LIB);
            goto err;
        }
        if (FUNC15(s)) {
            if (FUNC5(pctx, RSA_PKCS1_PSS_PADDING) <= 0
                || FUNC6(pctx,
                                                RSA_PSS_SALTLEN_DIGEST) <= 0) {
                FUNC17(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_PROCESS_KEY_EXCHANGE, ERR_R_EVP_LIB);
                goto err;
            }
        }
        tbslen = FUNC18(s, &tbs, FUNC10(&params),
                                            FUNC14(&params));
        if (tbslen == 0) {
            /* SSLfatal() already called */
            goto err;
        }

        rv = FUNC0(md_ctx, FUNC10(&signature),
                              FUNC14(&signature), tbs, tbslen);
        FUNC9(tbs);
        if (rv <= 0) {
            FUNC17(s, SSL_AD_DECRYPT_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     SSL_R_BAD_SIGNATURE);
            goto err;
        }
        FUNC2(md_ctx);
        md_ctx = NULL;
    } else {
        /* aNULL, aSRP or PSK do not need public keys */
        if (!(s->s3->tmp.new_cipher->algorithm_auth & (SSL_aNULL | SSL_aSRP))
            && !(alg_k & SSL_PSK)) {
            /* Might be wrong key type, check it */
            if (FUNC20(s)) {
                FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                         SSL_R_BAD_DATA);
            }
            /* else this shouldn't happen, SSLfatal() already called */
            goto err;
        }
        /* still data left over */
        if (FUNC14(pkt) != 0) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_EXCHANGE,
                     SSL_R_EXTRA_DATA_IN_MESSAGE);
            goto err;
        }
    }

    return MSG_PROCESS_CONTINUE_READING;
 err:
    FUNC2(md_ctx);
    return MSG_PROCESS_ERROR;
}