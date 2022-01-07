
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* poly; int b; int a; int field; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_BITS2 ;
 int BN_GF2m_mod_arr (int ,int const*,int*) ;
 int BN_GF2m_poly2arr (int ,int*,int) ;
 int BN_copy (int ,int const*) ;
 int EC_F_EC_GF2M_SIMPLE_GROUP_SET_CURVE ;
 int EC_R_UNSUPPORTED_FIELD ;
 int ECerr (int ,int ) ;
 int bn_set_all_zero (int ) ;
 int * bn_wexpand (int ,int) ;

int ec_GF2m_simple_group_set_curve(EC_GROUP *group,
                                   const BIGNUM *p, const BIGNUM *a,
                                   const BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0, i;


    if (!BN_copy(group->field, p))
        goto err;
    i = BN_GF2m_poly2arr(group->field, group->poly, 6) - 1;
    if ((i != 5) && (i != 3)) {
        ECerr(EC_F_EC_GF2M_SIMPLE_GROUP_SET_CURVE, EC_R_UNSUPPORTED_FIELD);
        goto err;
    }


    if (!BN_GF2m_mod_arr(group->a, a, group->poly))
        goto err;
    if (bn_wexpand(group->a, (int)(group->poly[0] + BN_BITS2 - 1) / BN_BITS2)
        == ((void*)0))
        goto err;
    bn_set_all_zero(group->a);


    if (!BN_GF2m_mod_arr(group->b, b, group->poly))
        goto err;
    if (bn_wexpand(group->b, (int)(group->poly[0] + BN_BITS2 - 1) / BN_BITS2)
        == ((void*)0))
        goto err;
    bn_set_all_zero(group->b);

    ret = 1;
 err:
    return ret;
}
