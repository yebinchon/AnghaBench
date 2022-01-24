#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int top; int* d; } ;
typedef  int BN_ULONG ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  BN_F_BN_MOD_EXP_MONT_WORD ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_R_CALLED_WITH_EVEN_MODULUS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__ const*) ; 
 int FUNC15 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__ const*) ; 

int FUNC19(BIGNUM *rr, BN_ULONG a, const BIGNUM *p,
                         const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *in_mont)
{
    BN_MONT_CTX *mont = NULL;
    int b, bits, ret = 0;
    int r_is_one;
    BN_ULONG w, next_w;
    BIGNUM *r, *t;
    BIGNUM *swap_tmp;
#define BN_MOD_MUL_WORD(r, w, m) \
                (BN_mul_word(r, (w)) && \
                (/* BN_ucmp(r, (m)) < 0 ? 1 :*/  \
                        (BN_mod(t, r, m, ctx) && (swap_tmp = r, r = t, t = swap_tmp, 1))))
    /*
     * BN_MOD_MUL_WORD is only used with 'w' large, so the BN_ucmp test is
     * probably more overhead than always using BN_mod (which uses BN_copy if
     * a similar test returns true).
     */
    /*
     * We can use BN_mod and do not need BN_nnmod because our accumulator is
     * never negative (the result of BN_mod does not depend on the sign of
     * the modulus).
     */
#define BN_TO_MONTGOMERY_WORD(r, w, mont) \
                (BN_set_word(r, (w)) && BN_to_montgomery(r, r, (mont), ctx))

    if (FUNC10(p, BN_FLG_CONSTTIME) != 0
            || FUNC10(m, BN_FLG_CONSTTIME) != 0) {
        /* BN_FLG_CONSTTIME only supported by BN_mod_exp_mont() */
        FUNC17(BN_F_BN_MOD_EXP_MONT_WORD, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    FUNC18(p);
    FUNC18(m);

    if (!FUNC12(m)) {
        FUNC17(BN_F_BN_MOD_EXP_MONT_WORD, BN_R_CALLED_WITH_EVEN_MODULUS);
        return 0;
    }
    if (m->top == 1)
        a %= m->d[0];           /* make sure that 'a' is reduced */

    bits = FUNC14(p);
    if (bits == 0) {
        /* x**0 mod 1, or x**0 mod -1 is still zero. */
        if (FUNC8(m, 1)) {
            ret = 1;
            FUNC16(rr);
        } else {
            ret = FUNC15(rr);
        }
        return ret;
    }
    if (a == 0) {
        FUNC16(rr);
        ret = 1;
        return ret;
    }

    FUNC2(ctx);
    r = FUNC1(ctx);
    t = FUNC1(ctx);
    if (t == NULL)
        goto err;

    if (in_mont != NULL)
        mont = in_mont;
    else {
        if ((mont = FUNC5()) == NULL)
            goto err;
        if (!FUNC6(mont, m, ctx))
            goto err;
    }

    r_is_one = 1;               /* except for Montgomery factor */

    /* bits-1 >= 0 */

    /* The result is accumulated in the product r*w. */
    w = a;                      /* bit 'bits-1' of 'p' is always set */
    for (b = bits - 2; b >= 0; b--) {
        /* First, square r*w. */
        next_w = w * w;
        if ((next_w / w) != w) { /* overflow */
            if (r_is_one) {
                if (!BN_TO_MONTGOMERY_WORD(r, w, mont))
                    goto err;
                r_is_one = 0;
            } else {
                if (!BN_MOD_MUL_WORD(r, w, m))
                    goto err;
            }
            next_w = 1;
        }
        w = next_w;
        if (!r_is_one) {
            if (!FUNC13(r, r, r, mont, ctx))
                goto err;
        }

        /* Second, multiply r*w by 'a' if exponent bit is set. */
        if (FUNC11(p, b)) {
            next_w = w * a;
            if ((next_w / a) != w) { /* overflow */
                if (r_is_one) {
                    if (!BN_TO_MONTGOMERY_WORD(r, w, mont))
                        goto err;
                    r_is_one = 0;
                } else {
                    if (!BN_MOD_MUL_WORD(r, w, m))
                        goto err;
                }
                next_w = a;
            }
            w = next_w;
        }
    }

    /* Finally, set r:=r*w. */
    if (w != 1) {
        if (r_is_one) {
            if (!BN_TO_MONTGOMERY_WORD(r, w, mont))
                goto err;
            r_is_one = 0;
        } else {
            if (!BN_MOD_MUL_WORD(r, w, m))
                goto err;
        }
    }

    if (r_is_one) {             /* can happen only if a == 1 */
        if (!FUNC15(rr))
            goto err;
    } else {
        if (!FUNC9(rr, r, mont, ctx))
            goto err;
    }
    ret = 1;
 err:
    if (in_mont == NULL)
        FUNC4(mont);
    FUNC0(ctx);
    FUNC18(rr);
    return ret;
}