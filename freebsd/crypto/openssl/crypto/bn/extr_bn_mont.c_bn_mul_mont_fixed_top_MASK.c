#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int top; int neg; int /*<<< orphan*/  flags; int /*<<< orphan*/  d; } ;
struct TYPE_22__ {int top; int /*<<< orphan*/  d; } ;
struct TYPE_23__ {int /*<<< orphan*/  n0; TYPE_1__ N; } ;
typedef  TYPE_2__ BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_3__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_FLG_FIXED_TOP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__ const*,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*,int) ; 

int FUNC10(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                          BN_MONT_CTX *mont, BN_CTX *ctx)
{
    BIGNUM *tmp;
    int ret = 0;
    int num = mont->N.top;

#if defined(OPENSSL_BN_ASM_MONT) && defined(MONT_WORD)
    if (num > 1 && a->top == num && b->top == num) {
        if (bn_wexpand(r, num) == NULL)
            return 0;
        if (bn_mul_mont(r->d, a->d, b->d, mont->N.d, mont->n0, num)) {
            r->neg = a->neg ^ b->neg;
            r->top = num;
            r->flags |= BN_FLG_FIXED_TOP;
            return 1;
        }
    }
#endif

    if ((a->top + b->top) > 2 * num)
        return 0;

    FUNC2(ctx);
    tmp = FUNC1(ctx);
    if (tmp == NULL)
        goto err;

    FUNC4(tmp);
    if (a == b) {
        if (!FUNC8(tmp, a, ctx))
            goto err;
    } else {
        if (!FUNC6(tmp, a, b, ctx))
            goto err;
    }
    /* reduce from aRR to aR */
#ifdef MONT_WORD
    if (!bn_from_montgomery_word(r, tmp, mont))
        goto err;
#else
    if (!FUNC3(r, tmp, mont, ctx))
        goto err;
#endif
    ret = 1;
 err:
    FUNC0(ctx);
    return ret;
}