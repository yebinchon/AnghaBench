
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int smallfelem ;
typedef int felem_bytearray ;
typedef int felem ;
struct TYPE_15__ {TYPE_12__* generator; } ;
struct TYPE_14__ {int *** g_pre_comp; } ;
struct TYPE_13__ {int Z; int Y; int X; } ;
typedef TYPE_1__ NISTP256_PRE_COMP ;
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
 int EC_nistp256_pre_comp_free (TYPE_1__*) ;
 int EC_pre_comp_free (TYPE_2__*) ;
 int SETPRECOMP (TYPE_2__*,int ,TYPE_1__*) ;
 int felem_shrink (int ,int ) ;
 int gmul ;
 int make_points_affine (int,int **,int *) ;
 int memcpy (int ***,int ,int) ;
 int memset (int *,int ,int) ;
 int nistp256 ;
 int * nistp256_curve_params ;
 TYPE_1__* nistp256_pre_comp_new () ;
 int point_add_small (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int point_double_small (int ,int ,int ,int ,int ,int ) ;

int ec_GFp_nistp256_precompute_mult(EC_GROUP *group, BN_CTX *ctx)
{
    int ret = 0;
    NISTP256_PRE_COMP *pre = ((void*)0);
    int i, j;
    BN_CTX *new_ctx = ((void*)0);
    BIGNUM *x, *y;
    EC_POINT *generator = ((void*)0);
    smallfelem tmp_smallfelems[32];
    felem x_tmp, y_tmp, z_tmp;


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
    BN_bin2bn(nistp256_curve_params[3], sizeof(felem_bytearray), x);
    BN_bin2bn(nistp256_curve_params[4], sizeof(felem_bytearray), y);
    if (!EC_POINT_set_affine_coordinates(group, generator, x, y, ctx))
        goto err;
    if ((pre = nistp256_pre_comp_new()) == ((void*)0))
        goto err;



    if (0 == EC_POINT_cmp(group, generator, group->generator, ctx)) {
        memcpy(pre->g_pre_comp, gmul, sizeof(pre->g_pre_comp));
        goto done;
    }
    if ((!BN_to_felem(x_tmp, group->generator->X)) ||
        (!BN_to_felem(y_tmp, group->generator->Y)) ||
        (!BN_to_felem(z_tmp, group->generator->Z)))
        goto err;
    felem_shrink(pre->g_pre_comp[0][1][0], x_tmp);
    felem_shrink(pre->g_pre_comp[0][1][1], y_tmp);
    felem_shrink(pre->g_pre_comp[0][1][2], z_tmp);




    for (i = 1; i <= 8; i <<= 1) {
        point_double_small(pre->g_pre_comp[1][i][0], pre->g_pre_comp[1][i][1],
                           pre->g_pre_comp[1][i][2], pre->g_pre_comp[0][i][0],
                           pre->g_pre_comp[0][i][1],
                           pre->g_pre_comp[0][i][2]);
        for (j = 0; j < 31; ++j) {
            point_double_small(pre->g_pre_comp[1][i][0],
                               pre->g_pre_comp[1][i][1],
                               pre->g_pre_comp[1][i][2],
                               pre->g_pre_comp[1][i][0],
                               pre->g_pre_comp[1][i][1],
                               pre->g_pre_comp[1][i][2]);
        }
        if (i == 8)
            break;
        point_double_small(pre->g_pre_comp[0][2 * i][0],
                           pre->g_pre_comp[0][2 * i][1],
                           pre->g_pre_comp[0][2 * i][2],
                           pre->g_pre_comp[1][i][0], pre->g_pre_comp[1][i][1],
                           pre->g_pre_comp[1][i][2]);
        for (j = 0; j < 31; ++j) {
            point_double_small(pre->g_pre_comp[0][2 * i][0],
                               pre->g_pre_comp[0][2 * i][1],
                               pre->g_pre_comp[0][2 * i][2],
                               pre->g_pre_comp[0][2 * i][0],
                               pre->g_pre_comp[0][2 * i][1],
                               pre->g_pre_comp[0][2 * i][2]);
        }
    }
    for (i = 0; i < 2; i++) {

        memset(pre->g_pre_comp[i][0], 0, sizeof(pre->g_pre_comp[i][0]));


        point_add_small(pre->g_pre_comp[i][6][0], pre->g_pre_comp[i][6][1],
                        pre->g_pre_comp[i][6][2], pre->g_pre_comp[i][4][0],
                        pre->g_pre_comp[i][4][1], pre->g_pre_comp[i][4][2],
                        pre->g_pre_comp[i][2][0], pre->g_pre_comp[i][2][1],
                        pre->g_pre_comp[i][2][2]);

        point_add_small(pre->g_pre_comp[i][10][0], pre->g_pre_comp[i][10][1],
                        pre->g_pre_comp[i][10][2], pre->g_pre_comp[i][8][0],
                        pre->g_pre_comp[i][8][1], pre->g_pre_comp[i][8][2],
                        pre->g_pre_comp[i][2][0], pre->g_pre_comp[i][2][1],
                        pre->g_pre_comp[i][2][2]);

        point_add_small(pre->g_pre_comp[i][12][0], pre->g_pre_comp[i][12][1],
                        pre->g_pre_comp[i][12][2], pre->g_pre_comp[i][8][0],
                        pre->g_pre_comp[i][8][1], pre->g_pre_comp[i][8][2],
                        pre->g_pre_comp[i][4][0], pre->g_pre_comp[i][4][1],
                        pre->g_pre_comp[i][4][2]);



        point_add_small(pre->g_pre_comp[i][14][0], pre->g_pre_comp[i][14][1],
                        pre->g_pre_comp[i][14][2], pre->g_pre_comp[i][12][0],
                        pre->g_pre_comp[i][12][1], pre->g_pre_comp[i][12][2],
                        pre->g_pre_comp[i][2][0], pre->g_pre_comp[i][2][1],
                        pre->g_pre_comp[i][2][2]);
        for (j = 1; j < 8; ++j) {

            point_add_small(pre->g_pre_comp[i][2 * j + 1][0],
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
    make_points_affine(31, &(pre->g_pre_comp[0][1]), tmp_smallfelems);

 done:
    SETPRECOMP(group, nistp256, pre);
    pre = ((void*)0);
    ret = 1;

 err:
    BN_CTX_end(ctx);
    EC_POINT_free(generator);
    BN_CTX_free(new_ctx);
    EC_nistp256_pre_comp_free(pre);
    return ret;
}
