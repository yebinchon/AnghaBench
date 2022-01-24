#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t blocksize; size_t numblocks; size_t w; size_t num; int /*<<< orphan*/  const** points; int /*<<< orphan*/ * group; } ;
typedef  TYPE_1__ EC_PRE_COMP ;
typedef  int /*<<< orphan*/  const EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_F_EC_WNAF_PRECOMPUTE_MULT ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_UNDEFINED_GENERATOR ; 
 int /*<<< orphan*/  EC_R_UNKNOWN_ORDER ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 size_t FUNC16 (size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  const** FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ec ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(EC_GROUP *group, BN_CTX *ctx)
{
    const EC_POINT *generator;
    EC_POINT *tmp_point = NULL, *base = NULL, **var;
    BN_CTX *new_ctx = NULL;
    const BIGNUM *order;
    size_t i, bits, w, pre_points_per_block, blocksize, numblocks, num;
    EC_POINT **points = NULL;
    EC_PRE_COMP *pre_comp;
    int ret = 0;

    /* if there is an old EC_PRE_COMP object, throw it away */
    FUNC15(group);
    if ((pre_comp = FUNC21(group)) == NULL)
        return 0;

    generator = FUNC6(group);
    if (generator == NULL) {
        FUNC17(EC_F_EC_WNAF_PRECOMPUTE_MULT, EC_R_UNDEFINED_GENERATOR);
        goto err;
    }

    if (ctx == NULL) {
        ctx = new_ctx = FUNC2();
        if (ctx == NULL)
            goto err;
    }

    FUNC3(ctx);

    order = FUNC7(group);
    if (order == NULL)
        goto err;
    if (FUNC4(order)) {
        FUNC17(EC_F_EC_WNAF_PRECOMPUTE_MULT, EC_R_UNKNOWN_ORDER);
        goto err;
    }

    bits = FUNC5(order);
    /*
     * The following parameters mean we precompute (approximately) one point
     * per bit. TBD: The combination 8, 4 is perfect for 160 bits; for other
     * bit lengths, other parameter combinations might provide better
     * efficiency.
     */
    blocksize = 8;
    w = 4;
    if (FUNC16(bits) > w) {
        /* let's not make the window too small ... */
        w = FUNC16(bits);
    }

    numblocks = (bits + blocksize - 1) / blocksize; /* max. number of blocks
                                                     * to use for wNAF
                                                     * splitting */

    pre_points_per_block = (size_t)1 << (w - 1);
    num = pre_points_per_block * numblocks; /* number of points to compute
                                             * and store */

    points = FUNC19(sizeof(*points) * (num + 1));
    if (points == NULL) {
        FUNC17(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    var = points;
    var[num] = NULL;            /* pivot */
    for (i = 0; i < num; i++) {
        if ((var[i] = FUNC12(group)) == NULL) {
            FUNC17(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if ((tmp_point = FUNC12(group)) == NULL
        || (base = FUNC12(group)) == NULL) {
        FUNC17(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (!FUNC9(base, generator))
        goto err;

    /* do the precomputation */
    for (i = 0; i < numblocks; i++) {
        size_t j;

        if (!FUNC10(group, tmp_point, base, ctx))
            goto err;

        if (!FUNC9(*var++, base))
            goto err;

        for (j = 1; j < pre_points_per_block; j++, var++) {
            /*
             * calculate odd multiples of the current base point
             */
            if (!FUNC8(group, *var, tmp_point, *(var - 1), ctx))
                goto err;
        }

        if (i < numblocks - 1) {
            /*
             * get the next base (multiply current one by 2^blocksize)
             */
            size_t k;

            if (blocksize <= 2) {
                FUNC17(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_INTERNAL_ERROR);
                goto err;
            }

            if (!FUNC10(group, base, tmp_point, ctx))
                goto err;
            for (k = 2; k < blocksize; k++) {
                if (!FUNC10(group, base, base, ctx))
                    goto err;
            }
        }
    }

    if (!FUNC13(group, num, points, ctx))
        goto err;

    pre_comp->group = group;
    pre_comp->blocksize = blocksize;
    pre_comp->numblocks = numblocks;
    pre_comp->w = w;
    pre_comp->points = points;
    points = NULL;
    pre_comp->num = num;
    FUNC20(group, ec, pre_comp);
    pre_comp = NULL;
    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    FUNC14(pre_comp);
    if (points) {
        EC_POINT **p;

        for (p = points; *p != NULL; p++)
            FUNC11(*p);
        FUNC18(points);
    }
    FUNC11(tmp_point);
    FUNC11(base);
    return ret;
}