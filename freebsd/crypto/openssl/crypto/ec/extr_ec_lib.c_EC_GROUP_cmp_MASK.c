#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* meth; } ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  (* group_get_curve ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int EC_FLAGS_CUSTOM_CURVE ; 
 int /*<<< orphan*/  const* FUNC6 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  const* FUNC8 (TYPE_2__ const*) ; 
 scalar_t__ FUNC9 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC15(const EC_GROUP *a, const EC_GROUP *b, BN_CTX *ctx)
{
    int r = 0;
    BIGNUM *a1, *a2, *a3, *b1, *b2, *b3;
    BN_CTX *ctx_new = NULL;

    /* compare the field types */
    if (FUNC11(FUNC10(a)) !=
        FUNC11(FUNC10(b)))
        return 1;
    /* compare the curve name (if present in both) */
    if (FUNC9(a) && FUNC9(b) &&
        FUNC9(a) != FUNC9(b))
        return 1;
    if (a->meth->flags & EC_FLAGS_CUSTOM_CURVE)
        return 0;

    if (ctx == NULL)
        ctx_new = ctx = FUNC3();
    if (ctx == NULL)
        return -1;

    FUNC4(ctx);
    a1 = FUNC2(ctx);
    a2 = FUNC2(ctx);
    a3 = FUNC2(ctx);
    b1 = FUNC2(ctx);
    b2 = FUNC2(ctx);
    b3 = FUNC2(ctx);
    if (b3 == NULL) {
        FUNC0(ctx);
        FUNC1(ctx_new);
        return -1;
    }

    /*
     * XXX This approach assumes that the external representation of curves
     * over the same field type is the same.
     */
    if (!a->meth->group_get_curve(a, a1, a2, a3, ctx) ||
        !b->meth->group_get_curve(b, b1, b2, b3, ctx))
        r = 1;

    if (r || FUNC5(a1, b1) || FUNC5(a2, b2) || FUNC5(a3, b3))
        r = 1;

    /* XXX EC_POINT_cmp() assumes that the methods are equal */
    if (r || FUNC12(a, FUNC7(a),
                          FUNC7(b), ctx))
        r = 1;

    if (!r) {
        const BIGNUM *ao, *bo, *ac, *bc;
        /* compare the order and cofactor */
        ao = FUNC8(a);
        bo = FUNC8(b);
        ac = FUNC6(a);
        bc = FUNC6(b);
        if (ao == NULL || bo == NULL) {
            FUNC0(ctx);
            FUNC1(ctx_new);
            return -1;
        }
        if (FUNC5(ao, bo) || FUNC5(ac, bc))
            r = 1;
    }

    FUNC0(ctx);
    FUNC1(ctx_new);

    return r;
}