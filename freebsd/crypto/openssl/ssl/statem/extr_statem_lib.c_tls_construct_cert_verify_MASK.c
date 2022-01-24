#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_18__ {int sig; int /*<<< orphan*/  sigalg; } ;
struct TYPE_17__ {scalar_t__ version; TYPE_4__* session; TYPE_3__* s3; } ;
struct TYPE_16__ {int /*<<< orphan*/  master_key; scalar_t__ master_key_length; } ;
struct TYPE_14__ {TYPE_1__* cert; TYPE_6__* sigalg; } ;
struct TYPE_15__ {TYPE_2__ tmp; } ;
struct TYPE_13__ {int /*<<< orphan*/ * privatekey; } ;
typedef  TYPE_5__ SSL ;
typedef  TYPE_6__ SIGALG_LOOKUP ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_CTRL_SSL3_MASTER_SECRET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t*,void*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int EVP_PKEY_RSA_PSS ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 int NID_id_GostR3410_2001 ; 
 int NID_id_GostR3410_2012_256 ; 
 int NID_id_GostR3410_2012_512 ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 unsigned char* FUNC12 (size_t) ; 
 int /*<<< orphan*/  RSA_PKCS1_PSS_PADDING ; 
 int /*<<< orphan*/  RSA_PSS_SALTLEN_DIGEST ; 
 scalar_t__ SSL3_VERSION ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CERT_VERIFY ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLS13_TBS_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,unsigned char*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__ const*,int /*<<< orphan*/  const**) ; 

int FUNC20(SSL *s, WPACKET *pkt)
{
    EVP_PKEY *pkey = NULL;
    const EVP_MD *md = NULL;
    EVP_MD_CTX *mctx = NULL;
    EVP_PKEY_CTX *pctx = NULL;
    size_t hdatalen = 0, siglen = 0;
    void *hdata;
    unsigned char *sig = NULL;
    unsigned char tls13tbs[TLS13_TBS_PREAMBLE_SIZE + EVP_MAX_MD_SIZE];
    const SIGALG_LOOKUP *lu = s->s3->tmp.sigalg;

    if (lu == NULL || s->s3->tmp.cert == NULL) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    pkey = s->s3->tmp.cert->privatekey;

    if (pkey == NULL || !FUNC19(lu, &md)) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    mctx = FUNC7();
    if (mctx == NULL) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* Get the data to be signed */
    if (!FUNC17(s, tls13tbs, &hdata, &hdatalen)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (FUNC13(s) && !FUNC15(pkt, lu->sigalg)) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    siglen = FUNC10(pkey);
    sig = FUNC12(siglen);
    if (sig == NULL) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC3(mctx, &pctx, md, NULL, pkey) <= 0) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_EVP_LIB);
        goto err;
    }

    if (lu->sig == EVP_PKEY_RSA_PSS) {
        if (FUNC8(pctx, RSA_PKCS1_PSS_PADDING) <= 0
            || FUNC9(pctx,
                                                RSA_PSS_SALTLEN_DIGEST) <= 0) {
            FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
    }
    if (s->version == SSL3_VERSION) {
        if (FUNC4(mctx, hdata, hdatalen) <= 0
            || !FUNC5(mctx, EVP_CTRL_SSL3_MASTER_SECRET,
                                (int)s->session->master_key_length,
                                s->session->master_key)
            || FUNC2(mctx, sig, &siglen) <= 0) {

            FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
    } else if (FUNC1(mctx, sig, &siglen, hdata, hdatalen) <= 0) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_EVP_LIB);
        goto err;
    }

#ifndef OPENSSL_NO_GOST
    {
        int pktype = lu->sig;

        if (pktype == NID_id_GostR3410_2001
            || pktype == NID_id_GostR3410_2012_256
            || pktype == NID_id_GostR3410_2012_512)
            FUNC0(sig, NULL, siglen);
    }
#endif

    if (!FUNC16(pkt, sig, siglen)) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    /* Digest cached records and discard handshake buffer */
    if (!FUNC18(s, 0)) {
        /* SSLfatal() already called */
        goto err;
    }

    FUNC11(sig);
    FUNC6(mctx);
    return 1;
 err:
    FUNC11(sig);
    FUNC6(mctx);
    return 0;
}