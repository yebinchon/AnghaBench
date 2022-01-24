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
typedef  scalar_t__ BN_ULONG ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 int BN_prime_checks ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int NUMPRIMES ; 
 int* primes ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC23(const BIGNUM *a, int checks, BN_CTX *ctx_passed,
                            int do_trial_division, BN_GENCB *cb)
{
    int i, j, ret = -1;
    int k;
    BN_CTX *ctx = NULL;
    BIGNUM *A1, *A1_odd, *A3, *check; /* taken from ctx */
    BN_MONT_CTX *mont = NULL;

    /* Take care of the really small primes 2 & 3 */
    if (FUNC14(a, 2) || FUNC14(a, 3))
        return 1;

    /* Check odd and bigger than 1 */
    if (!FUNC13(a) || FUNC10(a, FUNC21()) <= 0)
        return 0;

    if (checks == BN_prime_checks)
        checks = FUNC17(FUNC16(a));

    /* first look for small factors */
    if (do_trial_division) {
        for (i = 1; i < NUMPRIMES; i++) {
            BN_ULONG mod = FUNC15(a, primes[i]);
            if (mod == (BN_ULONG)-1)
                goto err;
            if (mod == 0)
                return FUNC14(a, primes[i]);
        }
        if (!FUNC5(cb, 1, -1))
            goto err;
    }

    if (ctx_passed != NULL)
        ctx = ctx_passed;
    else if ((ctx = FUNC3()) == NULL)
        goto err;
    FUNC4(ctx);

    A1 = FUNC2(ctx);
    A3 = FUNC2(ctx);
    A1_odd = FUNC2(ctx);
    check = FUNC2(ctx);
    if (check == NULL)
        goto err;

    /* compute A1 := a - 1 */
    if (!FUNC11(A1, a) || !FUNC20(A1, 1))
        goto err;
    /* compute A3 := a - 3 */
    if (!FUNC11(A3, a) || !FUNC20(A3, 3))
        goto err;

    /* write  A1  as  A1_odd * 2^k */
    k = 1;
    while (!FUNC12(A1, k))
        k++;
    if (!FUNC19(A1_odd, A1, k))
        goto err;

    /* Montgomery setup for computations mod a */
    mont = FUNC7();
    if (mont == NULL)
        goto err;
    if (!FUNC8(mont, a, ctx))
        goto err;

    for (i = 0; i < checks; i++) {
        /* 1 < check < a-1 */
        if (!FUNC18(check, A3) || !FUNC9(check, 2))
            goto err;

        j = FUNC22(check, a, A1, A1_odd, k, ctx, mont);
        if (j == -1)
            goto err;
        if (j) {
            ret = 0;
            goto err;
        }
        if (!FUNC5(cb, 1, i))
            goto err;
    }
    ret = 1;
 err:
    if (ctx != NULL) {
        FUNC0(ctx);
        if (ctx_passed == NULL)
            FUNC1(ctx);
    }
    FUNC6(mont);

    return ret;
}