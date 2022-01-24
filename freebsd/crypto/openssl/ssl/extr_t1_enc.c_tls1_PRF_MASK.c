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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_PKEY_TLS1_PRF ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS1_PRF ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(SSL *s,
                    const void *seed1, size_t seed1_len,
                    const void *seed2, size_t seed2_len,
                    const void *seed3, size_t seed3_len,
                    const void *seed4, size_t seed4_len,
                    const void *seed5, size_t seed5_len,
                    const unsigned char *sec, size_t slen,
                    unsigned char *out, size_t olen, int fatal)
{
    const EVP_MD *md = FUNC9(s);
    EVP_PKEY_CTX *pctx = NULL;
    int ret = 0;

    if (md == NULL) {
        /* Should never happen */
        if (fatal)
            FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                     ERR_R_INTERNAL_ERROR);
        else
            FUNC7(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    pctx = FUNC2(EVP_PKEY_TLS1_PRF, NULL);
    if (pctx == NULL || FUNC6(pctx) <= 0
        || FUNC4(pctx, md) <= 0
        || FUNC3(pctx, sec, (int)slen) <= 0
        || FUNC0(pctx, seed1, (int)seed1_len) <= 0
        || FUNC0(pctx, seed2, (int)seed2_len) <= 0
        || FUNC0(pctx, seed3, (int)seed3_len) <= 0
        || FUNC0(pctx, seed4, (int)seed4_len) <= 0
        || FUNC0(pctx, seed5, (int)seed5_len) <= 0
        || FUNC5(pctx, out, &olen) <= 0) {
        if (fatal)
            FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                     ERR_R_INTERNAL_ERROR);
        else
            FUNC7(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = 1;

 err:
    FUNC1(pctx);
    return ret;
}