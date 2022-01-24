#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  derived_secret_label ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY ; 
 int /*<<< orphan*/  EVP_PKEY_HKDF ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS13_GENERATE_SECRET ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* default_zeros ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char const*,unsigned char*,int,unsigned char*,size_t,unsigned char*,size_t,int) ; 

int FUNC17(SSL *s, const EVP_MD *md,
                          const unsigned char *prevsecret,
                          const unsigned char *insecret,
                          size_t insecretlen,
                          unsigned char *outsecret)
{
    size_t mdlen, prevsecretlen;
    int mdleni;
    int ret;
    EVP_PKEY_CTX *pctx = FUNC7(EVP_PKEY_HKDF, NULL);
#ifdef CHARSET_EBCDIC
    static const char derived_secret_label[] = { 0x64, 0x65, 0x72, 0x69, 0x76, 0x65, 0x64, 0x00 };
#else
    static const char derived_secret_label[] = "derived";
#endif
    unsigned char preextractsec[EVP_MAX_MD_SIZE];

    if (pctx == NULL) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    mdleni = FUNC4(md);
    /* Ensure cast to size_t is safe */
    if (!FUNC15(mdleni >= 0)) {
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    mdlen = (size_t)mdleni;

    if (insecret == NULL) {
        insecret = default_zeros;
        insecretlen = mdlen;
    }
    if (prevsecret == NULL) {
        prevsecret = default_zeros;
        prevsecretlen = 0;
    } else {
        EVP_MD_CTX *mctx = FUNC3();
        unsigned char hash[EVP_MAX_MD_SIZE];

        /* The pre-extract derive step uses a hash of no messages */
        if (mctx == NULL
                || FUNC1(mctx, md, NULL) <= 0
                || FUNC0(mctx, hash, NULL) <= 0) {
            FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                     ERR_R_INTERNAL_ERROR);
            FUNC2(mctx);
            FUNC5(pctx);
            return 0;
        }
        FUNC2(mctx);

        /* Generate the pre-extract secret */
        if (!FUNC16(s, md, prevsecret,
                               (unsigned char *)derived_secret_label,
                               sizeof(derived_secret_label) - 1, hash, mdlen,
                               preextractsec, mdlen, 1)) {
            /* SSLfatal() already called */
            FUNC5(pctx);
            return 0;
        }

        prevsecret = preextractsec;
        prevsecretlen = mdlen;
    }

    ret = FUNC12(pctx) <= 0
            || FUNC6(pctx, EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY)
               <= 0
            || FUNC10(pctx, md) <= 0
            || FUNC8(pctx, insecret, insecretlen) <= 0
            || FUNC9(pctx, prevsecret, prevsecretlen)
               <= 0
            || FUNC11(pctx, outsecret, &mdlen)
               <= 0;

    if (ret != 0)
        FUNC14(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);

    FUNC5(pctx);
    if (prevsecret == preextractsec)
        FUNC13(preextractsec, mdlen);
    return ret == 0;
}