#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  smallfelem ;
typedef  int /*<<< orphan*/  felem_bytearray ;
typedef  int /*<<< orphan*/  felem ;
struct TYPE_15__ {TYPE_12__* generator; } ;
struct TYPE_14__ {int /*<<< orphan*/ *** g_pre_comp; } ;
struct TYPE_13__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ NISTP256_PRE_COMP ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_12__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gmul ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ***,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nistp256 ; 
 int /*<<< orphan*/ * nistp256_curve_params ; 
 TYPE_1__* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC21(EC_GROUP *group, BN_CTX *ctx)
{
    int ret = 0;
    NISTP256_PRE_COMP *pre = NULL;
    int i, j;
    BN_CTX *new_ctx = NULL;
    BIGNUM *x, *y;
    EC_POINT *generator = NULL;
    smallfelem tmp_smallfelems[32];
    felem x_tmp, y_tmp, z_tmp;

    /* throw away old precomputation */
    FUNC12(group);
    if (ctx == NULL)
        if ((ctx = new_ctx = FUNC3()) == NULL)
            return 0;
    FUNC4(ctx);
    x = FUNC2(ctx);
    y = FUNC2(ctx);
    if (y == NULL)
        goto err;
    /* get the generator */
    if (group->generator == NULL)
        goto err;
    generator = FUNC9(group);
    if (generator == NULL)
        goto err;
    FUNC5(nistp256_curve_params[3], sizeof(felem_bytearray), x);
    FUNC5(nistp256_curve_params[4], sizeof(felem_bytearray), y);
    if (!FUNC10(group, generator, x, y, ctx))
        goto err;
    if ((pre = FUNC18()) == NULL)
        goto err;
    /*
     * if the generator is the standard one, use built-in precomputation
     */
    if (0 == FUNC7(group, generator, group->generator, ctx)) {
        FUNC16(pre->g_pre_comp, gmul, sizeof(pre->g_pre_comp));
        goto done;
    }
    if ((!FUNC6(x_tmp, group->generator->X)) ||
        (!FUNC6(y_tmp, group->generator->Y)) ||
        (!FUNC6(z_tmp, group->generator->Z)))
        goto err;
    FUNC14(pre->g_pre_comp[0][1][0], x_tmp);
    FUNC14(pre->g_pre_comp[0][1][1], y_tmp);
    FUNC14(pre->g_pre_comp[0][1][2], z_tmp);
    /*
     * compute 2^64*G, 2^128*G, 2^192*G for the first table, 2^32*G, 2^96*G,
     * 2^160*G, 2^224*G for the second one
     */
    for (i = 1; i <= 8; i <<= 1) {
        FUNC20(pre->g_pre_comp[1][i][0], pre->g_pre_comp[1][i][1],
                           pre->g_pre_comp[1][i][2], pre->g_pre_comp[0][i][0],
                           pre->g_pre_comp[0][i][1],
                           pre->g_pre_comp[0][i][2]);
        for (j = 0; j < 31; ++j) {
            FUNC20(pre->g_pre_comp[1][i][0],
                               pre->g_pre_comp[1][i][1],
                               pre->g_pre_comp[1][i][2],
                               pre->g_pre_comp[1][i][0],
                               pre->g_pre_comp[1][i][1],
                               pre->g_pre_comp[1][i][2]);
        }
        if (i == 8)
            break;
        FUNC20(pre->g_pre_comp[0][2 * i][0],
                           pre->g_pre_comp[0][2 * i][1],
                           pre->g_pre_comp[0][2 * i][2],
                           pre->g_pre_comp[1][i][0], pre->g_pre_comp[1][i][1],
                           pre->g_pre_comp[1][i][2]);
        for (j = 0; j < 31; ++j) {
            FUNC20(pre->g_pre_comp[0][2 * i][0],
                               pre->g_pre_comp[0][2 * i][1],
                               pre->g_pre_comp[0][2 * i][2],
                               pre->g_pre_comp[0][2 * i][0],
                               pre->g_pre_comp[0][2 * i][1],
                               pre->g_pre_comp[0][2 * i][2]);
        }
    }
    for (i = 0; i < 2; i++) {
        /* g_pre_comp[i][0] is the point at infinity */
        FUNC17(pre->g_pre_comp[i][0], 0, sizeof(pre->g_pre_comp[i][0]));
        /* the remaining multiples */
        /* 2^64*G + 2^128*G resp. 2^96*G + 2^160*G */
        FUNC19(pre->g_pre_comp[i][6][0], pre->g_pre_comp[i][6][1],
                        pre->g_pre_comp[i][6][2], pre->g_pre_comp[i][4][0],
                        pre->g_pre_comp[i][4][1], pre->g_pre_comp[i][4][2],
                        pre->g_pre_comp[i][2][0], pre->g_pre_comp[i][2][1],
                        pre->g_pre_comp[i][2][2]);
        /* 2^64*G + 2^192*G resp. 2^96*G + 2^224*G */
        FUNC19(pre->g_pre_comp[i][10][0], pre->g_pre_comp[i][10][1],
                        pre->g_pre_comp[i][10][2], pre->g_pre_comp[i][8][0],
                        pre->g_pre_comp[i][8][1], pre->g_pre_comp[i][8][2],
                        pre->g_pre_comp[i][2][0], pre->g_pre_comp[i][2][1],
                        pre->g_pre_comp[i][2][2]);
        /* 2^128*G + 2^192*G resp. 2^160*G + 2^224*G */
        FUNC19(pre->g_pre_comp[i][12][0], pre->g_pre_comp[i][12][1],
                        pre->g_pre_comp[i][12][2], pre->g_pre_comp[i][8][0],
                        pre->g_pre_comp[i][8][1], pre->g_pre_comp[i][8][2],
                        pre->g_pre_comp[i][4][0], pre->g_pre_comp[i][4][1],
                        pre->g_pre_comp[i][4][2]);
        /*
         * 2^64*G + 2^128*G + 2^192*G resp. 2^96*G + 2^160*G + 2^224*G
         */
        FUNC19(pre->g_pre_comp[i][14][0], pre->g_pre_comp[i][14][1],
                        pre->g_pre_comp[i][14][2], pre->g_pre_comp[i][12][0],
                        pre->g_pre_comp[i][12][1], pre->g_pre_comp[i][12][2],
                        pre->g_pre_comp[i][2][0], pre->g_pre_comp[i][2][1],
                        pre->g_pre_comp[i][2][2]);
        for (j = 1; j < 8; ++j) {
            /* odd multiples: add G resp. 2^32*G */
            FUNC19(pre->g_pre_comp[i][2 * j + 1][0],
                            pre->g_pre_comp[i][2 * j + 1][1],
                            pre->g_pre_comp[i][2 * j + 1][2],
                            pre->g_pre_comp[i][2 * j][0],
                            pre->g_pre_comp[i][2 * j][1],
                            pre->g_pre_comp[i][2 * j][2],
                            pre->g_pre_comp[i][1][0],
                            pre->g_pre_comp[i][1][1],
                            pre->g_pre_comp[i][1][2]);
        }
    }
    FUNC15(31, &(pre->g_pre_comp[0][1]), tmp_smallfelems);

 done:
    FUNC13(group, nistp256, pre);
    pre = NULL;
    ret = 1;

 err:
    FUNC0(ctx);
    FUNC8(generator);
    FUNC1(new_ctx);
    FUNC11(pre);
    return ret;
}