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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  EVP_F_EVP_VERIFYFINAL ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_FINALISE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned char const*,unsigned int,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(EVP_MD_CTX *ctx, const unsigned char *sigbuf,
                    unsigned int siglen, EVP_PKEY *pkey)
{
    unsigned char m[EVP_MAX_MD_SIZE];
    unsigned int m_len = 0;
    int i = 0;
    EVP_PKEY_CTX *pkctx = NULL;

    if (FUNC5(ctx, EVP_MD_CTX_FLAG_FINALISE)) {
        if (!FUNC0(ctx, m, &m_len))
            goto err;
    } else {
        int rv = 0;
        EVP_MD_CTX *tmp_ctx = FUNC4();
        if (tmp_ctx == NULL) {
            FUNC11(EVP_F_EVP_VERIFYFINAL, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        rv = FUNC1(tmp_ctx, ctx);
        if (rv)
            rv = FUNC0(tmp_ctx, m, &m_len);
        FUNC2(tmp_ctx);
        if (!rv)
            return 0;
    }

    i = -1;
    pkctx = FUNC7(pkey, NULL);
    if (pkctx == NULL)
        goto err;
    if (FUNC10(pkctx) <= 0)
        goto err;
    if (FUNC8(pkctx, FUNC3(ctx)) <= 0)
        goto err;
    i = FUNC9(pkctx, sigbuf, siglen, m, m_len);
 err:
    FUNC6(pkctx);
    return i;
}