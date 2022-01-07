
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int felem_bytearray ;
struct TYPE_4__ {int field_mod_func; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_bin2bn (int ,int,int *) ;
 scalar_t__ BN_cmp (int *,int const*) ;
 int BN_nist_mod_256 ;
 int EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE ;
 int EC_R_WRONG_CURVE_PARAMETERS ;
 int ECerr (int ,int ) ;
 int ec_GFp_simple_group_set_curve (TYPE_1__*,int const*,int const*,int const*,int *) ;
 int * nistp256_curve_params ;

int ec_GFp_nistp256_group_set_curve(EC_GROUP *group, const BIGNUM *p,
                                    const BIGNUM *a, const BIGNUM *b,
                                    BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *new_ctx = ((void*)0);
    BIGNUM *curve_p, *curve_a, *curve_b;

    if (ctx == ((void*)0))
        if ((ctx = new_ctx = BN_CTX_new()) == ((void*)0))
            return 0;
    BN_CTX_start(ctx);
    curve_p = BN_CTX_get(ctx);
    curve_a = BN_CTX_get(ctx);
    curve_b = BN_CTX_get(ctx);
    if (curve_b == ((void*)0))
        goto err;
    BN_bin2bn(nistp256_curve_params[0], sizeof(felem_bytearray), curve_p);
    BN_bin2bn(nistp256_curve_params[1], sizeof(felem_bytearray), curve_a);
    BN_bin2bn(nistp256_curve_params[2], sizeof(felem_bytearray), curve_b);
    if ((BN_cmp(curve_p, p)) || (BN_cmp(curve_a, a)) || (BN_cmp(curve_b, b))) {
        ECerr(EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE,
              EC_R_WRONG_CURVE_PARAMETERS);
        goto err;
    }
    group->field_mod_func = BN_nist_mod_256;
    ret = ec_GFp_simple_group_set_curve(group, p, a, b, ctx);
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}
