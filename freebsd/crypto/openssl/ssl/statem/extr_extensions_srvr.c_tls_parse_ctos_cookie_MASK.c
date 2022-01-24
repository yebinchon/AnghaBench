#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hrr ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_15__ {int cookieok; } ;
struct TYPE_21__ {unsigned int version; int hello_retry_request; TYPE_2__ ext; TYPE_7__* s3; TYPE_1__* method; int /*<<< orphan*/  tmp_session_id_len; int /*<<< orphan*/  tmp_session_id; TYPE_3__* ctx; TYPE_5__* session_ctx; } ;
struct TYPE_19__ {scalar_t__ new_cipher; } ;
struct TYPE_20__ {int flags; unsigned int group_id; TYPE_6__ tmp; } ;
struct TYPE_17__ {int /*<<< orphan*/  cookie_hmac_key; } ;
struct TYPE_18__ {TYPE_4__ ext; } ;
struct TYPE_16__ {scalar_t__ (* verify_stateless_cookie_cb ) (TYPE_8__*,unsigned char*,int) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  (* put_cipher_by_char ) (scalar_t__,int /*<<< orphan*/ *,size_t*) ;} ;
typedef  TYPE_8__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 unsigned int COOKIE_STATE_FORMAT_VERSION ; 
 scalar_t__ FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_HMAC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int MAX_HRR_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  SSL3_MT_SERVER_HELLO ; 
 int /*<<< orphan*/  SSL3_RANDOM_SIZE ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_CTOS_COOKIE ; 
 int /*<<< orphan*/  SSL_R_BAD_CIPHER ; 
 int /*<<< orphan*/  SSL_R_BAD_PROTOCOL_VERSION_NUMBER ; 
 int /*<<< orphan*/  SSL_R_COOKIE_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int TLS1_2_VERSION ; 
 unsigned int TLS1_3_VERSION ; 
 int TLS1_FLAGS_STATELESS ; 
 unsigned int TLSEXT_TYPE_cookie ; 
 unsigned int TLSEXT_TYPE_key_share ; 
 unsigned int TLSEXT_TYPE_supported_versions ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_8__*,unsigned char*,int,unsigned char*,size_t) ; 
 int /*<<< orphan*/  hrrrandom ; 
 scalar_t__ FUNC31 (TYPE_8__*,unsigned char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (TYPE_8__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *) ; 

int FUNC35(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                          size_t chainidx)
{
#ifndef OPENSSL_NO_TLS1_3
    unsigned int format, version, key_share, group_id;
    EVP_MD_CTX *hctx;
    EVP_PKEY *pkey;
    PACKET cookie, raw, chhash, appcookie;
    WPACKET hrrpkt;
    const unsigned char *data, *mdin, *ciphdata;
    unsigned char hmac[SHA256_DIGEST_LENGTH];
    unsigned char hrr[MAX_HRR_SIZE];
    size_t rawlen, hmaclen, hrrlen, ciphlen;
    unsigned long tm, now;

    /* Ignore any cookie if we're not set up to verify it */
    if (s->ctx->verify_stateless_cookie_cb == NULL
            || (s->s3->flags & TLS1_FLAGS_STATELESS) == 0)
        return 1;

    if (!FUNC8(pkt, &cookie)) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    raw = cookie;
    data = FUNC9(&raw);
    rawlen = FUNC16(&raw);
    if (rawlen < SHA256_DIGEST_LENGTH
            || !FUNC10(&raw, rawlen - SHA256_DIGEST_LENGTH)) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    mdin = FUNC9(&raw);

    /* Verify the HMAC of the cookie */
    hctx = FUNC3();
    pkey = FUNC6(EVP_PKEY_HMAC, NULL,
                                        s->session_ctx->ext.cookie_hmac_key,
                                        sizeof(s->session_ctx->ext
                                               .cookie_hmac_key));
    if (hctx == NULL || pkey == NULL) {
        FUNC4(hctx);
        FUNC5(pkey);
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    hmaclen = SHA256_DIGEST_LENGTH;
    if (FUNC2(hctx, NULL, FUNC7(), NULL, pkey) <= 0
            || FUNC1(hctx, hmac, &hmaclen, data,
                              rawlen - SHA256_DIGEST_LENGTH) <= 0
            || hmaclen != SHA256_DIGEST_LENGTH) {
        FUNC4(hctx);
        FUNC5(pkey);
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    FUNC4(hctx);
    FUNC5(pkey);

    if (FUNC0(hmac, mdin, SHA256_DIGEST_LENGTH) != 0) {
        FUNC17(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_COOKIE_MISMATCH);
        return 0;
    }

    if (!FUNC14(&cookie, &format)) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    /* Check the cookie format is something we recognise. Ignore it if not */
    if (format != COOKIE_STATE_FORMAT_VERSION)
        return 1;

    /*
     * The rest of these checks really shouldn't fail since we have verified the
     * HMAC above.
     */

    /* Check the version number is sane */
    if (!FUNC14(&cookie, &version)) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    if (version != TLS1_3_VERSION) {
        FUNC17(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_BAD_PROTOCOL_VERSION_NUMBER);
        return 0;
    }

    if (!FUNC14(&cookie, &group_id)) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    ciphdata = FUNC9(&cookie);
    if (!FUNC10(&cookie, 2)) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    if (group_id != s->s3->group_id
            || s->s3->tmp.new_cipher
               != FUNC31(s, ciphdata, 0)) {
        /*
         * We chose a different cipher or group id this time around to what is
         * in the cookie. Something must have changed.
         */
        FUNC17(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_BAD_CIPHER);
        return 0;
    }

    if (!FUNC11(&cookie, &key_share)
            || !FUNC15(&cookie, &tm)
            || !FUNC13(&cookie, &chhash)
            || !FUNC12(&cookie, &appcookie)
            || FUNC16(&cookie) != SHA256_DIGEST_LENGTH) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    /* We tolerate a cookie age of up to 10 minutes (= 60 * 10 seconds) */
    now = (unsigned long)FUNC34(NULL);
    if (tm > now || (now - tm) > 600) {
        /* Cookie is stale. Ignore it */
        return 1;
    }

    /* Verify the app cookie */
    if (s->ctx->verify_stateless_cookie_cb(s, FUNC9(&appcookie),
                                     FUNC16(&appcookie)) == 0) {
        FUNC17(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 SSL_R_COOKIE_MISMATCH);
        return 0;
    }

    /*
     * Reconstruct the HRR that we would have sent in response to the original
     * ClientHello so we can add it to the transcript hash.
     * Note: This won't work with custom HRR extensions
     */
    if (!FUNC22(&hrrpkt, hrr, sizeof(hrr), 0)) {
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!FUNC25(&hrrpkt, SSL3_MT_SERVER_HELLO)
            || !FUNC27(&hrrpkt)
            || !FUNC24(&hrrpkt, TLS1_2_VERSION)
            || !FUNC23(&hrrpkt, hrrrandom, SSL3_RANDOM_SIZE)
            || !FUNC29(&hrrpkt, s->tmp_session_id,
                                      s->tmp_session_id_len)
            || !s->method->put_cipher_by_char(s->s3->tmp.new_cipher, &hrrpkt,
                                              &ciphlen)
            || !FUNC25(&hrrpkt, 0)
            || !FUNC26(&hrrpkt)) {
        FUNC18(&hrrpkt);
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!FUNC24(&hrrpkt, TLSEXT_TYPE_supported_versions)
            || !FUNC26(&hrrpkt)
            || !FUNC24(&hrrpkt, s->version)
            || !FUNC19(&hrrpkt)) {
        FUNC18(&hrrpkt);
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (key_share) {
        if (!FUNC24(&hrrpkt, TLSEXT_TYPE_key_share)
                || !FUNC26(&hrrpkt)
                || !FUNC24(&hrrpkt, s->s3->group_id)
                || !FUNC19(&hrrpkt)) {
            FUNC18(&hrrpkt);
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    if (!FUNC24(&hrrpkt, TLSEXT_TYPE_cookie)
            || !FUNC26(&hrrpkt)
            || !FUNC28(&hrrpkt, data, rawlen)
            || !FUNC19(&hrrpkt) /* cookie extension */
            || !FUNC19(&hrrpkt) /* extension block */
            || !FUNC19(&hrrpkt) /* message */
            || !FUNC21(&hrrpkt, &hrrlen)
            || !FUNC20(&hrrpkt)) {
        FUNC18(&hrrpkt);
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* Reconstruct the transcript hash */
    if (!FUNC30(s, FUNC9(&chhash),
                                       FUNC16(&chhash), hrr,
                                       hrrlen)) {
        /* SSLfatal() already called */
        return 0;
    }

    /* Act as if this ClientHello came after a HelloRetryRequest */
    s->hello_retry_request = 1;

    s->ext.cookieok = 1;
#endif

    return 1;
}