#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  const* Y; int /*<<< orphan*/  const* X; int /*<<< orphan*/  Z_is_one; } ;
struct TYPE_11__ {int /*<<< orphan*/  const* b; int /*<<< orphan*/  const* a; TYPE_1__* meth; } ;
struct TYPE_10__ {int (* field_mul ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;int (* field_sqr ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_4__ EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (TYPE_2__ const*,TYPE_4__ const*) ; 

int FUNC8(const EC_GROUP *group, const EC_POINT *point,
                               BN_CTX *ctx)
{
    int ret = -1;
    BN_CTX *new_ctx = NULL;
    BIGNUM *lh, *y2;
    int (*field_mul) (const EC_GROUP *, BIGNUM *, const BIGNUM *,
                      const BIGNUM *, BN_CTX *);
    int (*field_sqr) (const EC_GROUP *, BIGNUM *, const BIGNUM *, BN_CTX *);

    if (FUNC7(group, point))
        return 1;

    field_mul = group->meth->field_mul;
    field_sqr = group->meth->field_sqr;

    /* only support affine coordinates */
    if (!point->Z_is_one)
        return -1;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL)
            return -1;
    }

    FUNC4(ctx);
    y2 = FUNC2(ctx);
    lh = FUNC2(ctx);
    if (lh == NULL)
        goto err;

    /*-
     * We have a curve defined by a Weierstrass equation
     *      y^2 + x*y = x^3 + a*x^2 + b.
     *  <=> x^3 + a*x^2 + x*y + b + y^2 = 0
     *  <=> ((x + a) * x + y ) * x + b + y^2 = 0
     */
    if (!FUNC5(lh, point->X, group->a))
        goto err;
    if (!field_mul(group, lh, lh, point->X, ctx))
        goto err;
    if (!FUNC5(lh, lh, point->Y))
        goto err;
    if (!field_mul(group, lh, lh, point->X, ctx))
        goto err;
    if (!FUNC5(lh, lh, group->b))
        goto err;
    if (!field_sqr(group, y2, point->Y, ctx))
        goto err;
    if (!FUNC5(lh, lh, y2))
        goto err;
    ret = FUNC6(lh);

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}