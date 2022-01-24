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
typedef  int /*<<< orphan*/  felem_bytearray ;
typedef  int /*<<< orphan*/  felem ;
struct TYPE_15__ {TYPE_12__* generator; } ;
struct TYPE_14__ {int /*<<< orphan*/ ** g_pre_comp; } ;
struct TYPE_13__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ NISTP521_PRE_COMP ;
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
 int /*<<< orphan*/  gmul ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nistp521 ; 
 int /*<<< orphan*/ * nistp521_curve_params ; 
 TYPE_1__* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC20(EC_GROUP *group, BN_CTX *ctx)
{
    int ret = 0;
    NISTP521_PRE_COMP *pre = NULL;
    int i, j;
    BN_CTX *new_ctx = NULL;
    BIGNUM *x, *y;
    EC_POINT *generator = NULL;
    felem tmp_felems[16];

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
    FUNC5(nistp521_curve_params[3], sizeof(felem_bytearray), x);
    FUNC5(nistp521_curve_params[4], sizeof(felem_bytearray), y);
    if (!FUNC10(group, generator, x, y, ctx))
        goto err;
    if ((pre = FUNC17()) == NULL)
        goto err;
    /*
     * if the generator is the standard one, use built-in precomputation
     */
    if (0 == FUNC7(group, generator, group->generator, ctx)) {
        FUNC15(pre->g_pre_comp, gmul, sizeof(pre->g_pre_comp));
        goto done;
    }
    if ((!FUNC6(pre->g_pre_comp[1][0], group->generator->X)) ||
        (!FUNC6(pre->g_pre_comp[1][1], group->generator->Y)) ||
        (!FUNC6(pre->g_pre_comp[1][2], group->generator->Z)))
        goto err;
    /* compute 2^130*G, 2^260*G, 2^390*G */
    for (i = 1; i <= 4; i <<= 1) {
        FUNC19(pre->g_pre_comp[2 * i][0], pre->g_pre_comp[2 * i][1],
                     pre->g_pre_comp[2 * i][2], pre->g_pre_comp[i][0],
                     pre->g_pre_comp[i][1], pre->g_pre_comp[i][2]);
        for (j = 0; j < 129; ++j) {
            FUNC19(pre->g_pre_comp[2 * i][0],
                         pre->g_pre_comp[2 * i][1],
                         pre->g_pre_comp[2 * i][2],
                         pre->g_pre_comp[2 * i][0],
                         pre->g_pre_comp[2 * i][1],
                         pre->g_pre_comp[2 * i][2]);
        }
    }
    /* g_pre_comp[0] is the point at infinity */
    FUNC16(pre->g_pre_comp[0], 0, sizeof(pre->g_pre_comp[0]));
    /* the remaining multiples */
    /* 2^130*G + 2^260*G */
    FUNC18(pre->g_pre_comp[6][0], pre->g_pre_comp[6][1],
              pre->g_pre_comp[6][2], pre->g_pre_comp[4][0],
              pre->g_pre_comp[4][1], pre->g_pre_comp[4][2],
              0, pre->g_pre_comp[2][0], pre->g_pre_comp[2][1],
              pre->g_pre_comp[2][2]);
    /* 2^130*G + 2^390*G */
    FUNC18(pre->g_pre_comp[10][0], pre->g_pre_comp[10][1],
              pre->g_pre_comp[10][2], pre->g_pre_comp[8][0],
              pre->g_pre_comp[8][1], pre->g_pre_comp[8][2],
              0, pre->g_pre_comp[2][0], pre->g_pre_comp[2][1],
              pre->g_pre_comp[2][2]);
    /* 2^260*G + 2^390*G */
    FUNC18(pre->g_pre_comp[12][0], pre->g_pre_comp[12][1],
              pre->g_pre_comp[12][2], pre->g_pre_comp[8][0],
              pre->g_pre_comp[8][1], pre->g_pre_comp[8][2],
              0, pre->g_pre_comp[4][0], pre->g_pre_comp[4][1],
              pre->g_pre_comp[4][2]);
    /* 2^130*G + 2^260*G + 2^390*G */
    FUNC18(pre->g_pre_comp[14][0], pre->g_pre_comp[14][1],
              pre->g_pre_comp[14][2], pre->g_pre_comp[12][0],
              pre->g_pre_comp[12][1], pre->g_pre_comp[12][2],
              0, pre->g_pre_comp[2][0], pre->g_pre_comp[2][1],
              pre->g_pre_comp[2][2]);
    for (i = 1; i < 8; ++i) {
        /* odd multiples: add G */
        FUNC18(pre->g_pre_comp[2 * i + 1][0],
                  pre->g_pre_comp[2 * i + 1][1],
                  pre->g_pre_comp[2 * i + 1][2], pre->g_pre_comp[2 * i][0],
                  pre->g_pre_comp[2 * i][1], pre->g_pre_comp[2 * i][2], 0,
                  pre->g_pre_comp[1][0], pre->g_pre_comp[1][1],
                  pre->g_pre_comp[1][2]);
    }
    FUNC14(15, &(pre->g_pre_comp[1]), tmp_felems);

 done:
    FUNC13(group, nistp521, pre);
    ret = 1;
    pre = NULL;
 err:
    FUNC0(ctx);
    FUNC8(generator);
    FUNC1(new_ctx);
    FUNC11(pre);
    return ret;
}