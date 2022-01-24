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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  A1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_NON_FIPS_ALLOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_PKEY_HMAC ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(const EVP_MD *md,
                           const unsigned char *sec, size_t sec_len,
                           const unsigned char *seed, size_t seed_len,
                           unsigned char *out, size_t olen)
{
    int chunk;
    EVP_MD_CTX *ctx = NULL, *ctx_tmp = NULL, *ctx_init = NULL;
    EVP_PKEY *mac_key = NULL;
    unsigned char A1[EVP_MAX_MD_SIZE];
    size_t A1_len;
    int ret = 0;

    chunk = FUNC7(md);
    if (!FUNC12(chunk > 0))
        goto err;

    ctx = FUNC5();
    ctx_tmp = FUNC5();
    ctx_init = FUNC5();
    if (ctx == NULL || ctx_tmp == NULL || ctx_init == NULL)
        goto err;
    FUNC6(ctx_init, EVP_MD_CTX_FLAG_NON_FIPS_ALLOW);
    mac_key = FUNC9(EVP_PKEY_HMAC, NULL, sec, sec_len);
    if (mac_key == NULL)
        goto err;
    if (!FUNC1(ctx_init, NULL, md, NULL, mac_key))
        goto err;
    if (!FUNC3(ctx, ctx_init))
        goto err;
    if (seed != NULL && !FUNC2(ctx, seed, seed_len))
        goto err;
    if (!FUNC0(ctx, A1, &A1_len))
        goto err;

    for (;;) {
        /* Reinit mac contexts */
        if (!FUNC3(ctx, ctx_init))
            goto err;
        if (!FUNC2(ctx, A1, A1_len))
            goto err;
        if (olen > (size_t)chunk && !FUNC3(ctx_tmp, ctx))
            goto err;
        if (seed && !FUNC2(ctx, seed, seed_len))
            goto err;

        if (olen > (size_t)chunk) {
            size_t mac_len;
            if (!FUNC0(ctx, out, &mac_len))
                goto err;
            out += mac_len;
            olen -= mac_len;
            /* calc the next A1 value */
            if (!FUNC0(ctx_tmp, A1, &A1_len))
                goto err;
        } else {                /* last one */

            if (!FUNC0(ctx, A1, &A1_len))
                goto err;
            FUNC11(out, A1, olen);
            break;
        }
    }
    ret = 1;
 err:
    FUNC8(mac_key);
    FUNC4(ctx);
    FUNC4(ctx_tmp);
    FUNC4(ctx_init);
    FUNC10(A1, sizeof(A1));
    return ret;
}