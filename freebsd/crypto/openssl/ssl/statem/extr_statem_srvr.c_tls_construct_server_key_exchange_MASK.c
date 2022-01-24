#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_28__ {int /*<<< orphan*/ * psk_identity_hint; int /*<<< orphan*/ * (* dh_tmp_cb ) (TYPE_7__*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/ * dh_tmp; scalar_t__ dh_tmp_auto; } ;
struct TYPE_27__ {scalar_t__ sig; int /*<<< orphan*/  sigalg; } ;
struct TYPE_20__ {int /*<<< orphan*/ * B; int /*<<< orphan*/ * s; int /*<<< orphan*/ * g; int /*<<< orphan*/ * N; } ;
struct TYPE_26__ {TYPE_3__* init_buf; TYPE_6__* s3; TYPE_9__* cert; TYPE_1__ srp_ctx; } ;
struct TYPE_24__ {TYPE_2__* cert; TYPE_4__* new_cipher; int /*<<< orphan*/ * pkey; TYPE_8__* sigalg; } ;
struct TYPE_25__ {TYPE_5__ tmp; } ;
struct TYPE_23__ {unsigned long algorithm_mkey; int algorithm_auth; } ;
struct TYPE_22__ {scalar_t__ data; } ;
struct TYPE_21__ {int /*<<< orphan*/ * privatekey; } ;
typedef  TYPE_7__ SSL ;
typedef  TYPE_8__ SIGALG_LOOKUP ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  DH ;
typedef  TYPE_9__ CERT ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned char*) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_PKEY_RSA_PSS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 size_t FUNC14 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 size_t FUNC17 (int /*<<< orphan*/ *) ; 
 int NAMED_CURVE_TYPE ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*) ; 
 size_t PSK_MAX_IDENTITY_LEN ; 
 int /*<<< orphan*/  RSA_PKCS1_PSS_PADDING ; 
 int /*<<< orphan*/  RSA_PSS_SALTLEN_DIGEST ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE ; 
 unsigned long SSL_PSK ; 
 int /*<<< orphan*/  SSL_R_DH_KEY_TOO_SMALL ; 
 int /*<<< orphan*/  SSL_R_MISSING_SRP_PARAM ; 
 int /*<<< orphan*/  SSL_R_MISSING_TMP_DH_KEY ; 
 int /*<<< orphan*/  SSL_R_UNKNOWN_KEY_EXCHANGE_TYPE ; 
 int /*<<< orphan*/  SSL_R_UNSUPPORTED_ELLIPTIC_CURVE ; 
 int /*<<< orphan*/  SSL_SECOP_TMP_DH ; 
 scalar_t__ FUNC19 (TYPE_7__*) ; 
 int SSL_aNULL ; 
 int SSL_aSRP ; 
 unsigned long SSL_kDHE ; 
 unsigned long SSL_kDHEPSK ; 
 unsigned long SSL_kECDHE ; 
 unsigned long SSL_kECDHEPSK ; 
 unsigned long SSL_kPSK ; 
 unsigned long SSL_kRSAPSK ; 
 unsigned long SSL_kSRP ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 
 size_t FUNC33 (TYPE_7__*,unsigned char**,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC34 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC37 (TYPE_7__*,int) ; 
 int /*<<< orphan*/ * FUNC38 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC41 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_8__ const*,int /*<<< orphan*/  const**) ; 
 int FUNC43 (TYPE_7__*,int) ; 

int FUNC44(SSL *s, WPACKET *pkt)
{
#ifndef OPENSSL_NO_DH
    EVP_PKEY *pkdh = NULL;
#endif
#ifndef OPENSSL_NO_EC
    unsigned char *encodedPoint = NULL;
    size_t encodedlen = 0;
    int curve_id = 0;
#endif
    const SIGALG_LOOKUP *lu = s->s3->tmp.sigalg;
    int i;
    unsigned long type;
    const BIGNUM *r[4];
    EVP_MD_CTX *md_ctx = FUNC8();
    EVP_PKEY_CTX *pctx = NULL;
    size_t paramlen, paramoffset;

    if (!FUNC24(pkt, &paramoffset)) {
        FUNC20(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (md_ctx == NULL) {
        FUNC20(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    type = s->s3->tmp.new_cipher->algorithm_mkey;

    r[0] = r[1] = r[2] = r[3] = NULL;
#ifndef OPENSSL_NO_PSK
    /* Plain PSK or RSAPSK nothing to do */
    if (type & (SSL_kPSK | SSL_kRSAPSK)) {
    } else
#endif                          /* !OPENSSL_NO_PSK */
#ifndef OPENSSL_NO_DH
    if (type & (SSL_kDHE | SSL_kDHEPSK)) {
        CERT *cert = s->cert;

        EVP_PKEY *pkdhp = NULL;
        DH *dh;

        if (s->cert->dh_tmp_auto) {
            DH *dhp = FUNC38(s);
            pkdh = FUNC15();
            if (pkdh == NULL || dhp == NULL) {
                FUNC2(dhp);
                FUNC20(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                         ERR_R_INTERNAL_ERROR);
                goto err;
            }
            FUNC11(pkdh, dhp);
            pkdhp = pkdh;
        } else {
            pkdhp = cert->dh_tmp;
        }
        if ((pkdhp == NULL) && (s->cert->dh_tmp_cb != NULL)) {
            DH *dhp = s->cert->dh_tmp_cb(s, 0, 1024);
            pkdh = FUNC35(dhp);
            if (pkdh == NULL) {
                FUNC20(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                         ERR_R_INTERNAL_ERROR);
                goto err;
            }
            pkdhp = pkdh;
        }
        if (pkdhp == NULL) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_MISSING_TMP_DH_KEY);
            goto err;
        }
        if (!FUNC39(s, SSL_SECOP_TMP_DH,
                          FUNC16(pkdhp), 0, pkdhp)) {
            FUNC20(s, SSL_AD_HANDSHAKE_FAILURE,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_DH_KEY_TOO_SMALL);
            goto err;
        }
        if (s->s3->tmp.pkey != NULL) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        s->s3->tmp.pkey = FUNC36(pkdhp);
        if (s->s3->tmp.pkey == NULL) {
            /* SSLfatal() already called */
            goto err;
        }

        dh = FUNC13(s->s3->tmp.pkey);
        if (dh == NULL) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        FUNC12(pkdh);
        pkdh = NULL;

        FUNC4(dh, &r[0], NULL, &r[1]);
        FUNC3(dh, &r[2], NULL);
    } else
#endif
#ifndef OPENSSL_NO_EC
    if (type & (SSL_kECDHE | SSL_kECDHEPSK)) {

        if (s->s3->tmp.pkey != NULL) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        /* Get NID of appropriate shared curve */
        curve_id = FUNC43(s, -2);
        if (curve_id == 0) {
            FUNC20(s, SSL_AD_HANDSHAKE_FAILURE,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_UNSUPPORTED_ELLIPTIC_CURVE);
            goto err;
        }
        s->s3->tmp.pkey = FUNC37(s, curve_id);
        /* Generate a new key for this curve */
        if (s->s3->tmp.pkey == NULL) {
            /* SSLfatal() already called */
            goto err;
        }

        /* Encode the public key. */
        encodedlen = FUNC14(s->s3->tmp.pkey,
                                                    &encodedPoint);
        if (encodedlen == 0) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_EC_LIB);
            goto err;
        }

        /*
         * We'll generate the serverKeyExchange message explicitly so we
         * can set these to NULLs
         */
        r[0] = NULL;
        r[1] = NULL;
        r[2] = NULL;
        r[3] = NULL;
    } else
#endif                          /* !OPENSSL_NO_EC */
#ifndef OPENSSL_NO_SRP
    if (type & SSL_kSRP) {
        if ((s->srp_ctx.N == NULL) ||
            (s->srp_ctx.g == NULL) ||
            (s->srp_ctx.s == NULL) || (s->srp_ctx.B == NULL)) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     SSL_R_MISSING_SRP_PARAM);
            goto err;
        }
        r[0] = s->srp_ctx.N;
        r[1] = s->srp_ctx.g;
        r[2] = s->srp_ctx.s;
        r[3] = s->srp_ctx.B;
    } else
#endif
    {
        FUNC20(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                 SSL_R_UNKNOWN_KEY_EXCHANGE_TYPE);
        goto err;
    }

    if (((s->s3->tmp.new_cipher->algorithm_auth & (SSL_aNULL | SSL_aSRP)) != 0)
        || ((s->s3->tmp.new_cipher->algorithm_mkey & SSL_PSK)) != 0) {
        lu = NULL;
    } else if (lu == NULL) {
        FUNC20(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE, ERR_R_INTERNAL_ERROR);
        goto err;
    }

#ifndef OPENSSL_NO_PSK
    if (type & SSL_PSK) {
        size_t len = (s->cert->psk_identity_hint == NULL)
                        ? 0 : FUNC40(s->cert->psk_identity_hint);

        /*
         * It should not happen that len > PSK_MAX_IDENTITY_LEN - we already
         * checked this when we set the identity hint - but just in case
         */
        if (len > PSK_MAX_IDENTITY_LEN
                || !FUNC30(pkt, s->cert->psk_identity_hint,
                                           len)) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }
#endif

    for (i = 0; i < 4 && r[i] != NULL; i++) {
        unsigned char *binval;
        int res;

#ifndef OPENSSL_NO_SRP
        if ((i == 2) && (type & SSL_kSRP)) {
            res = FUNC28(pkt);
        } else
#endif
            res = FUNC27(pkt);

        if (!res) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

#ifndef OPENSSL_NO_DH
        /*-
         * for interoperability with some versions of the Microsoft TLS
         * stack, we need to zero pad the DHE pub key to the same length
         * as the prime
         */
        if ((i == 2) && (type & (SSL_kDHE | SSL_kDHEPSK))) {
            size_t len = FUNC1(r[0]) - FUNC1(r[2]);

            if (len > 0) {
                if (!FUNC21(pkt, len, &binval)) {
                    FUNC20(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                             ERR_R_INTERNAL_ERROR);
                    goto err;
                }
                FUNC34(binval, 0, len);
            }
        }
#endif
        if (!FUNC21(pkt, FUNC1(r[i]), &binval)
                || !FUNC22(pkt)) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        FUNC0(r[i], binval);
    }

#ifndef OPENSSL_NO_EC
    if (type & (SSL_kECDHE | SSL_kECDHEPSK)) {
        /*
         * We only support named (not generic) curves. In this situation, the
         * ServerKeyExchange message has: [1 byte CurveType], [2 byte CurveName]
         * [1 byte length of encoded point], followed by the actual encoded
         * point itself
         */
        if (!FUNC26(pkt, NAMED_CURVE_TYPE)
                || !FUNC26(pkt, 0)
                || !FUNC26(pkt, curve_id)
                || !FUNC31(pkt, encodedPoint, encodedlen)) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        FUNC18(encodedPoint);
        encodedPoint = NULL;
    }
#endif

    /* not anonymous */
    if (lu != NULL) {
        EVP_PKEY *pkey = s->s3->tmp.cert->privatekey;
        const EVP_MD *md;
        unsigned char *sigbytes1, *sigbytes2, *tbs;
        size_t siglen, tbslen;
        int rv;

        if (pkey == NULL || !FUNC42(lu, &md)) {
            /* Should never happen */
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        /* Get length of the parameters we have written above */
        if (!FUNC23(pkt, &paramlen)) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        /* send signature algorithm */
        if (FUNC19(s) && !FUNC25(pkt, lu->sigalg)) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        /*
         * Create the signature. We don't know the actual length of the sig
         * until after we've created it, so we reserve enough bytes for it
         * up front, and then properly allocate them in the WPACKET
         * afterwards.
         */
        siglen = FUNC17(pkey);
        if (!FUNC32(pkt, siglen, &sigbytes1)
            || FUNC6(md_ctx, &pctx, md, NULL, pkey) <= 0) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        if (lu->sig == EVP_PKEY_RSA_PSS) {
            if (FUNC9(pctx, RSA_PKCS1_PSS_PADDING) <= 0
                || FUNC10(pctx, RSA_PSS_SALTLEN_DIGEST) <= 0) {
                FUNC20(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                        ERR_R_EVP_LIB);
                goto err;
            }
        }
        tbslen = FUNC33(s, &tbs,
                                            s->init_buf->data + paramoffset,
                                            paramlen);
        if (tbslen == 0) {
            /* SSLfatal() already called */
            goto err;
        }
        rv = FUNC5(md_ctx, sigbytes1, &siglen, tbs, tbslen);
        FUNC18(tbs);
        if (rv <= 0 || !FUNC29(pkt, siglen, &sigbytes2)
            || sigbytes1 != sigbytes2) {
            FUNC20(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    FUNC7(md_ctx);
    return 1;
 err:
#ifndef OPENSSL_NO_DH
    FUNC12(pkdh);
#endif
#ifndef OPENSSL_NO_EC
    FUNC18(encodedPoint);
#endif
    FUNC7(md_ctx);
    return 0;
}