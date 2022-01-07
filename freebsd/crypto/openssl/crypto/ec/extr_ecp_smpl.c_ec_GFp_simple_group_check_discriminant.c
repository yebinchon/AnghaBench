
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int b; int a; TYPE_1__* meth; int * field; } ;
struct TYPE_6__ {int (* field_decode ) (TYPE_2__ const*,int *,int ,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_copy (int *,int ) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_lshift (int *,int *,int) ;
 int BN_mod_add (int *,int *,int *,int const*,int *) ;
 int BN_mod_mul (int *,int *,int *,int const*,int *) ;
 int BN_mod_sqr (int *,int *,int const*,int *) ;
 int BN_mul_word (int *,int) ;
 int EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int stub1 (TYPE_2__ const*,int *,int ,int *) ;
 int stub2 (TYPE_2__ const*,int *,int ,int *) ;

int ec_GFp_simple_group_check_discriminant(const EC_GROUP *group, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *a, *b, *order, *tmp_1, *tmp_2;
    const BIGNUM *p = group->field;
    BN_CTX *new_ctx = ((void*)0);

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0)) {
            ECerr(EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT,
                  ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }
    BN_CTX_start(ctx);
    a = BN_CTX_get(ctx);
    b = BN_CTX_get(ctx);
    tmp_1 = BN_CTX_get(ctx);
    tmp_2 = BN_CTX_get(ctx);
    order = BN_CTX_get(ctx);
    if (order == ((void*)0))
        goto err;

    if (group->meth->field_decode) {
        if (!group->meth->field_decode(group, a, group->a, ctx))
            goto err;
        if (!group->meth->field_decode(group, b, group->b, ctx))
            goto err;
    } else {
        if (!BN_copy(a, group->a))
            goto err;
        if (!BN_copy(b, group->b))
            goto err;
    }






    if (BN_is_zero(a)) {
        if (BN_is_zero(b))
            goto err;
    } else if (!BN_is_zero(b)) {
        if (!BN_mod_sqr(tmp_1, a, p, ctx))
            goto err;
        if (!BN_mod_mul(tmp_2, tmp_1, a, p, ctx))
            goto err;
        if (!BN_lshift(tmp_1, tmp_2, 2))
            goto err;


        if (!BN_mod_sqr(tmp_2, b, p, ctx))
            goto err;
        if (!BN_mul_word(tmp_2, 27))
            goto err;


        if (!BN_mod_add(a, tmp_1, tmp_2, p, ctx))
            goto err;
        if (BN_is_zero(a))
            goto err;
    }
    ret = 1;

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}
