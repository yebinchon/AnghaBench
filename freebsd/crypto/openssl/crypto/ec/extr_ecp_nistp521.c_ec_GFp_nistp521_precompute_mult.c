
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int felem_bytearray ;
typedef int felem ;
struct TYPE_15__ {TYPE_12__* generator; } ;
struct TYPE_14__ {int ** g_pre_comp; } ;
struct TYPE_13__ {int Z; int Y; int X; } ;
typedef TYPE_1__ NISTP521_PRE_COMP ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_bin2bn (int ,int,int *) ;
 int BN_to_felem (int ,int ) ;
 scalar_t__ EC_POINT_cmp (TYPE_2__*,int *,TYPE_12__*,int *) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (TYPE_2__*) ;
 int EC_POINT_set_affine_coordinates (TYPE_2__*,int *,int *,int *,int *) ;
 int EC_nistp521_pre_comp_free (TYPE_1__*) ;
 int EC_pre_comp_free (TYPE_2__*) ;
 int SETPRECOMP (TYPE_2__*,int ,TYPE_1__*) ;
 int gmul ;
 int make_points_affine (int,int **,int *) ;
 int memcpy (int **,int ,int) ;
 int memset (int *,int ,int) ;
 int nistp521 ;
 int * nistp521_curve_params ;
 TYPE_1__* nistp521_pre_comp_new () ;
 int point_add (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int point_double (int ,int ,int ,int ,int ,int ) ;

int ec_GFp_nistp521_precompute_mult(EC_GROUP *group, BN_CTX *ctx)
{
    int ret = 0;
    NISTP521_PRE_COMP *pre = ((void*)0);
    int i, j;
    BN_CTX *new_ctx = ((void*)0);
    BIGNUM *x, *y;
    EC_POINT *generator = ((void*)0);
    felem tmp_felems[16];


    EC_pre_comp_free(group);
    if (ctx == ((void*)0))
        if ((ctx = new_ctx = BN_CTX_new()) == ((void*)0))
            return 0;
    BN_CTX_start(ctx);
    x = BN_CTX_get(ctx);
    y = BN_CTX_get(ctx);
    if (y == ((void*)0))
        goto err;

    if (group->generator == ((void*)0))
        goto err;
    generator = EC_POINT_new(group);
    if (generator == ((void*)0))
        goto err;
    BN_bin2bn(nistp521_curve_params[3], sizeof(felem_bytearray), x);
    BN_bin2bn(nistp521_curve_params[4], sizeof(felem_bytearray), y);
    if (!EC_POINT_set_affine_coordinates(group, generator, x, y, ctx))
        goto err;
    if ((pre = nistp521_pre_comp_new()) == ((void*)0))
        goto err;



    if (0 == EC_POINT_cmp(group, generator, group->generator, ctx)) {
        memcpy(pre->g_pre_comp, gmul, sizeof(pre->g_pre_comp));
        goto done;
    }
    if ((!BN_to_felem(pre->g_pre_comp[1][0], group->generator->X)) ||
        (!BN_to_felem(pre->g_pre_comp[1][1], group->generator->Y)) ||
        (!BN_to_felem(pre->g_pre_comp[1][2], group->generator->Z)))
        goto err;

    for (i = 1; i <= 4; i <<= 1) {
        point_double(pre->g_pre_comp[2 * i][0], pre->g_pre_comp[2 * i][1],
                     pre->g_pre_comp[2 * i][2], pre->g_pre_comp[i][0],
                     pre->g_pre_comp[i][1], pre->g_pre_comp[i][2]);
        for (j = 0; j < 129; ++j) {
            point_double(pre->g_pre_comp[2 * i][0],
                         pre->g_pre_comp[2 * i][1],
                         pre->g_pre_comp[2 * i][2],
                         pre->g_pre_comp[2 * i][0],
                         pre->g_pre_comp[2 * i][1],
                         pre->g_pre_comp[2 * i][2]);
        }
    }

    memset(pre->g_pre_comp[0], 0, sizeof(pre->g_pre_comp[0]));


    point_add(pre->g_pre_comp[6][0], pre->g_pre_comp[6][1],
              pre->g_pre_comp[6][2], pre->g_pre_comp[4][0],
              pre->g_pre_comp[4][1], pre->g_pre_comp[4][2],
              0, pre->g_pre_comp[2][0], pre->g_pre_comp[2][1],
              pre->g_pre_comp[2][2]);

    point_add(pre->g_pre_comp[10][0], pre->g_pre_comp[10][1],
              pre->g_pre_comp[10][2], pre->g_pre_comp[8][0],
              pre->g_pre_comp[8][1], pre->g_pre_comp[8][2],
              0, pre->g_pre_comp[2][0], pre->g_pre_comp[2][1],
              pre->g_pre_comp[2][2]);

    point_add(pre->g_pre_comp[12][0], pre->g_pre_comp[12][1],
              pre->g_pre_comp[12][2], pre->g_pre_comp[8][0],
              pre->g_pre_comp[8][1], pre->g_pre_comp[8][2],
              0, pre->g_pre_comp[4][0], pre->g_pre_comp[4][1],
              pre->g_pre_comp[4][2]);

    point_add(pre->g_pre_comp[14][0], pre->g_pre_comp[14][1],
              pre->g_pre_comp[14][2], pre->g_pre_comp[12][0],
              pre->g_pre_comp[12][1], pre->g_pre_comp[12][2],
              0, pre->g_pre_comp[2][0], pre->g_pre_comp[2][1],
              pre->g_pre_comp[2][2]);
    for (i = 1; i < 8; ++i) {

        point_add(pre->g_pre_comp[2 * i + 1][0],
                  pre->g_pre_comp[2 * i + 1][1],
                  pre->g_pre_comp[2 * i + 1][2], pre->g_pre_comp[2 * i][0],
                  pre->g_pre_comp[2 * i][1], pre->g_pre_comp[2 * i][2], 0,
                  pre->g_pre_comp[1][0], pre->g_pre_comp[1][1],
                  pre->g_pre_comp[1][2]);
    }
    make_points_affine(15, &(pre->g_pre_comp[1]), tmp_felems);

 done:
    SETPRECOMP(group, nistp521, pre);
    ret = 1;
    pre = ((void*)0);
 err:
    BN_CTX_end(ctx);
    EC_POINT_free(generator);
    BN_CTX_free(new_ctx);
    EC_nistp521_pre_comp_free(pre);
    return ret;
}
