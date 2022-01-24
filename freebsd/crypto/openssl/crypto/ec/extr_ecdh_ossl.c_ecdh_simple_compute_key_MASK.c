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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int EC_FLAG_COFACTOR_ECDH ; 
 int /*<<< orphan*/  EC_F_ECDH_SIMPLE_COMPUTE_KEY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_R_MISSING_PRIVATE_KEY ; 
 int /*<<< orphan*/  EC_R_POINT_ARITHMETIC_FAILURE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*) ; 
 unsigned char* FUNC19 (size_t) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 

int FUNC21(unsigned char **pout, size_t *poutlen,
                            const EC_POINT *pub_key, const EC_KEY *ecdh)
{
    BN_CTX *ctx;
    EC_POINT *tmp = NULL;
    BIGNUM *x = NULL;
    const BIGNUM *priv_key;
    const EC_GROUP *group;
    int ret = 0;
    size_t buflen, len;
    unsigned char *buf = NULL;

    if ((ctx = FUNC3()) == NULL)
        goto err;
    FUNC4(ctx);
    x = FUNC2(ctx);
    if (x == NULL) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    priv_key = FUNC11(ecdh);
    if (priv_key == NULL) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, EC_R_MISSING_PRIVATE_KEY);
        goto err;
    }

    group = FUNC10(ecdh);

    if (FUNC12(ecdh) & EC_FLAG_COFACTOR_ECDH) {
        if (!FUNC8(group, x, NULL) ||
            !FUNC6(x, x, priv_key, ctx)) {
            FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        priv_key = x;
    }

    if ((tmp = FUNC16(group)) == NULL) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (!FUNC15(group, tmp, NULL, pub_key, priv_key, ctx)) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, EC_R_POINT_ARITHMETIC_FAILURE);
        goto err;
    }

    if (!FUNC14(group, tmp, x, NULL, ctx)) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, EC_R_POINT_ARITHMETIC_FAILURE);
        goto err;
    }

    buflen = (FUNC9(group) + 7) / 8;
    len = FUNC7(x);
    if (len > buflen) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if ((buf = FUNC19(buflen)) == NULL) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    FUNC20(buf, 0, buflen - len);
    if (len != (size_t)FUNC5(x, buf + buflen - len)) {
        FUNC17(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_BN_LIB);
        goto err;
    }

    *pout = buf;
    *poutlen = buflen;
    buf = NULL;

    ret = 1;

 err:
    FUNC13(tmp);
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC18(buf);
    return ret;
}