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
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  const* FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  SM2_F_SM2_SIG_VERIFY ; 
 int /*<<< orphan*/  SM2_R_BAD_SIGNATURE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(const EC_KEY *key, const ECDSA_SIG *sig,
                          const BIGNUM *e)
{
    int ret = 0;
    const EC_GROUP *group = FUNC10(key);
    const BIGNUM *order = FUNC9(group);
    BN_CTX *ctx = NULL;
    EC_POINT *pt = NULL;
    BIGNUM *t = NULL;
    BIGNUM *x1 = NULL;
    const BIGNUM *r = NULL;
    const BIGNUM *s = NULL;

    ctx = FUNC2();
    pt = FUNC15(group);
    if (ctx == NULL || pt == NULL) {
        FUNC16(SM2_F_SM2_SIG_VERIFY, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    FUNC3(ctx);
    t = FUNC1(ctx);
    x1 = FUNC1(ctx);
    if (x1 == NULL) {
        FUNC16(SM2_F_SM2_SIG_VERIFY, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    /*
     * B1: verify whether r' in [1,n-1], verification failed if not
     * B2: verify whether s' in [1,n-1], verification failed if not
     * B3: set M'~=ZA || M'
     * B4: calculate e'=Hv(M'~)
     * B5: calculate t = (r' + s') modn, verification failed if t=0
     * B6: calculate the point (x1', y1')=[s']G + [t]PA
     * B7: calculate R=(e'+x1') modn, verification pass if yes, otherwise failed
     */

    FUNC8(sig, &r, &s);

    if (FUNC4(r, FUNC7()) < 0
            || FUNC4(s, FUNC7()) < 0
            || FUNC4(order, r) <= 0
            || FUNC4(order, s) <= 0) {
        FUNC16(SM2_F_SM2_SIG_VERIFY, SM2_R_BAD_SIGNATURE);
        goto done;
    }

    if (!FUNC6(t, r, s, order, ctx)) {
        FUNC16(SM2_F_SM2_SIG_VERIFY, ERR_R_BN_LIB);
        goto done;
    }

    if (FUNC5(t)) {
        FUNC16(SM2_F_SM2_SIG_VERIFY, SM2_R_BAD_SIGNATURE);
        goto done;
    }

    if (!FUNC14(group, pt, s, FUNC11(key), t, ctx)
            || !FUNC13(group, pt, x1, NULL, ctx)) {
        FUNC16(SM2_F_SM2_SIG_VERIFY, ERR_R_EC_LIB);
        goto done;
    }

    if (!FUNC6(t, e, x1, order, ctx)) {
        FUNC16(SM2_F_SM2_SIG_VERIFY, ERR_R_BN_LIB);
        goto done;
    }

    if (FUNC4(r, t) == 0)
        ret = 1;

 done:
    FUNC12(pt);
    FUNC0(ctx);
    return ret;
}