#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * q; scalar_t__ j; scalar_t__ g; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int DH_CHECK_INVALID_J_VALUE ; 
 int DH_CHECK_INVALID_Q_VALUE ; 
 int DH_CHECK_P_NOT_PRIME ; 
 int DH_CHECK_P_NOT_SAFE_PRIME ; 
 int DH_CHECK_Q_NOT_PRIME ; 
 int DH_NOT_SUITABLE_GENERATOR ; 
 int /*<<< orphan*/  DH_NUMBER_ITERATIONS_FOR_PRIME ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,int*) ; 

int FUNC13(const DH *dh, int *ret)
{
    int ok = 0, r;
    BN_CTX *ctx = NULL;
    BIGNUM *t1 = NULL, *t2 = NULL;

    if (!FUNC12(dh, ret))
        return 0;

    ctx = FUNC3();
    if (ctx == NULL)
        goto err;
    FUNC4(ctx);
    t1 = FUNC2(ctx);
    t2 = FUNC2(ctx);
    if (t2 == NULL)
        goto err;

    if (dh->q) {
        if (FUNC5(dh->g, FUNC11()) <= 0)
            *ret |= DH_NOT_SUITABLE_GENERATOR;
        else if (FUNC5(dh->g, dh->p) >= 0)
            *ret |= DH_NOT_SUITABLE_GENERATOR;
        else {
            /* Check g^q == 1 mod p */
            if (!FUNC9(t1, dh->g, dh->q, dh->p, ctx))
                goto err;
            if (!FUNC7(t1))
                *ret |= DH_NOT_SUITABLE_GENERATOR;
        }
        r = FUNC8(dh->q, DH_NUMBER_ITERATIONS_FOR_PRIME, ctx, NULL);
        if (r < 0)
            goto err;
        if (!r)
            *ret |= DH_CHECK_Q_NOT_PRIME;
        /* Check p == 1 mod q  i.e. q divides p - 1 */
        if (!FUNC6(t1, t2, dh->p, dh->q, ctx))
            goto err;
        if (!FUNC7(t2))
            *ret |= DH_CHECK_INVALID_Q_VALUE;
        if (dh->j && FUNC5(dh->j, t1))
            *ret |= DH_CHECK_INVALID_J_VALUE;
    }

    r = FUNC8(dh->p, DH_NUMBER_ITERATIONS_FOR_PRIME, ctx, NULL);
    if (r < 0)
        goto err;
    if (!r)
        *ret |= DH_CHECK_P_NOT_PRIME;
    else if (!dh->q) {
        if (!FUNC10(t1, dh->p))
            goto err;
        r = FUNC8(t1, DH_NUMBER_ITERATIONS_FOR_PRIME, ctx, NULL);
        if (r < 0)
            goto err;
        if (!r)
            *ret |= DH_CHECK_P_NOT_SAFE_PRIME;
    }
    ok = 1;
 err:
    FUNC0(ctx);
    FUNC1(ctx);
    return ok;
}