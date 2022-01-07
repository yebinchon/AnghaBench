
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * generator; TYPE_1__* meth; } ;
struct TYPE_10__ {int flags; } ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 scalar_t__ BN_is_zero (int const*) ;
 int EC_FLAGS_CUSTOM_CURVE ;
 int EC_F_EC_GROUP_CHECK ;
 int EC_GROUP_check_discriminant (TYPE_2__ const*,int *) ;
 int * EC_GROUP_get0_order (TYPE_2__ const*) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_is_at_infinity (TYPE_2__ const*,int *) ;
 scalar_t__ EC_POINT_is_on_curve (TYPE_2__ const*,int *,int *) ;
 int EC_POINT_mul (TYPE_2__ const*,int *,int const*,int *,int *,int *) ;
 int * EC_POINT_new (TYPE_2__ const*) ;
 int EC_R_DISCRIMINANT_IS_ZERO ;
 int EC_R_INVALID_GROUP_ORDER ;
 int EC_R_POINT_IS_NOT_ON_CURVE ;
 int EC_R_UNDEFINED_GENERATOR ;
 int EC_R_UNDEFINED_ORDER ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;

int EC_GROUP_check(const EC_GROUP *group, BN_CTX *ctx)
{
    int ret = 0;
    const BIGNUM *order;
    BN_CTX *new_ctx = ((void*)0);
    EC_POINT *point = ((void*)0);


    if ((group->meth->flags & EC_FLAGS_CUSTOM_CURVE) != 0)
        return 1;

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_CHECK, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }


    if (!EC_GROUP_check_discriminant(group, ctx)) {
        ECerr(EC_F_EC_GROUP_CHECK, EC_R_DISCRIMINANT_IS_ZERO);
        goto err;
    }


    if (group->generator == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_CHECK, EC_R_UNDEFINED_GENERATOR);
        goto err;
    }
    if (EC_POINT_is_on_curve(group, group->generator, ctx) <= 0) {
        ECerr(EC_F_EC_GROUP_CHECK, EC_R_POINT_IS_NOT_ON_CURVE);
        goto err;
    }


    if ((point = EC_POINT_new(group)) == ((void*)0))
        goto err;
    order = EC_GROUP_get0_order(group);
    if (order == ((void*)0))
        goto err;
    if (BN_is_zero(order)) {
        ECerr(EC_F_EC_GROUP_CHECK, EC_R_UNDEFINED_ORDER);
        goto err;
    }

    if (!EC_POINT_mul(group, point, order, ((void*)0), ((void*)0), ctx))
        goto err;
    if (!EC_POINT_is_at_infinity(group, point)) {
        ECerr(EC_F_EC_GROUP_CHECK, EC_R_INVALID_GROUP_ORDER);
        goto err;
    }

    ret = 1;

 err:
    BN_CTX_free(new_ctx);
    EC_POINT_free(point);
    return ret;
}
