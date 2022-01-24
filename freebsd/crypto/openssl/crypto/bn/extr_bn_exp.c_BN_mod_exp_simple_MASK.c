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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  BN_F_BN_MOD_EXP_SIMPLE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ; 
 int TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
                      const BIGNUM *m, BN_CTX *ctx)
{
    int i, j, bits, ret = 0, wstart, wend, window, wvalue;
    int start = 1;
    BIGNUM *d;
    /* Table of variables obtained from 'ctx' */
    BIGNUM *val[TABLE_SIZE];

    if (FUNC4(p, BN_FLG_CONSTTIME) != 0
            || FUNC4(a, BN_FLG_CONSTTIME) != 0
            || FUNC4(m, BN_FLG_CONSTTIME) != 0) {
        /* BN_FLG_CONSTTIME only supported by BN_mod_exp_mont() */
        FUNC13(BN_F_BN_MOD_EXP_SIMPLE, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    bits = FUNC9(p);
    if (bits == 0) {
        /* x**0 mod 1, or x**0 mod -1 is still zero. */
        if (FUNC3(m, 1)) {
            ret = 1;
            FUNC12(r);
        } else {
            ret = FUNC10(r);
        }
        return ret;
    }

    FUNC2(ctx);
    d = FUNC1(ctx);
    val[0] = FUNC1(ctx);
    if (val[0] == NULL)
        goto err;

    if (!FUNC8(val[0], a, m, ctx))
        goto err;               /* 1 */
    if (FUNC6(val[0])) {
        FUNC12(r);
        ret = 1;
        goto err;
    }

    window = FUNC11(bits);
    if (window > 1) {
        if (!FUNC7(d, val[0], val[0], m, ctx))
            goto err;           /* 2 */
        j = 1 << (window - 1);
        for (i = 1; i < j; i++) {
            if (((val[i] = FUNC1(ctx)) == NULL) ||
                !FUNC7(val[i], val[i - 1], d, m, ctx))
                goto err;
        }
    }

    start = 1;                  /* This is used to avoid multiplication etc
                                 * when there is only the value '1' in the
                                 * buffer. */
    wvalue = 0;                 /* The 'value' of the window */
    wstart = bits - 1;          /* The top bit of the window */
    wend = 0;                   /* The bottom bit of the window */

    if (!FUNC10(r))
        goto err;

    for (;;) {
        if (FUNC5(p, wstart) == 0) {
            if (!start)
                if (!FUNC7(r, r, r, m, ctx))
                    goto err;
            if (wstart == 0)
                break;
            wstart--;
            continue;
        }
        /*
         * We now have wstart on a 'set' bit, we now need to work out how bit
         * a window to do.  To do this we need to scan forward until the last
         * set bit before the end of the window
         */
        j = wstart;
        wvalue = 1;
        wend = 0;
        for (i = 1; i < window; i++) {
            if (wstart - i < 0)
                break;
            if (FUNC5(p, wstart - i)) {
                wvalue <<= (i - wend);
                wvalue |= 1;
                wend = i;
            }
        }

        /* wend is the size of the current window */
        j = wend + 1;
        /* add the 'bytes above' */
        if (!start)
            for (i = 0; i < j; i++) {
                if (!FUNC7(r, r, r, m, ctx))
                    goto err;
            }

        /* wvalue will be an odd number < 2^window */
        if (!FUNC7(r, r, val[wvalue >> 1], m, ctx))
            goto err;

        /* move the 'window' down further */
        wstart -= wend + 1;
        wvalue = 0;
        start = 0;
        if (wstart < 0)
            break;
    }
    ret = 1;
 err:
    FUNC0(ctx);
    FUNC14(r);
    return ret;
}