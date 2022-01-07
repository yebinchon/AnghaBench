
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_25__ {TYPE_1__* meth; int * a; } ;
struct TYPE_24__ {int Y; int X; scalar_t__ Z_is_one; } ;
struct TYPE_23__ {int (* field_mul ) (TYPE_3__ const*,int *,int *,int *,int *) ;int (* field_sqr ) (TYPE_3__ const*,int *,int *,int *) ;int (* field_div ) (TYPE_3__ const*,int *,int *,int *,int *) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GF2m_add (int *,int *,int *) ;
 scalar_t__ BN_GF2m_cmp (int *,int *) ;
 int BN_copy (int *,int ) ;
 scalar_t__ BN_is_zero (int *) ;
 int EC_POINT_copy (TYPE_2__*,TYPE_2__ const*) ;
 int EC_POINT_get_affine_coordinates (TYPE_3__ const*,TYPE_2__ const*,int *,int *,int *) ;
 scalar_t__ EC_POINT_is_at_infinity (TYPE_3__ const*,TYPE_2__ const*) ;
 int EC_POINT_set_affine_coordinates (TYPE_3__ const*,TYPE_2__*,int *,int *,int *) ;
 int EC_POINT_set_to_infinity (TYPE_3__ const*,TYPE_2__*) ;
 int stub1 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub2 (TYPE_3__ const*,int *,int *,int *) ;
 int stub3 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub4 (TYPE_3__ const*,int *,int *,int *) ;
 int stub5 (TYPE_3__ const*,int *,int *,int *,int *) ;

int ec_GF2m_simple_add(const EC_GROUP *group, EC_POINT *r, const EC_POINT *a,
                       const EC_POINT *b, BN_CTX *ctx)
{
    BN_CTX *new_ctx = ((void*)0);
    BIGNUM *x0, *y0, *x1, *y1, *x2, *y2, *s, *t;
    int ret = 0;

    if (EC_POINT_is_at_infinity(group, a)) {
        if (!EC_POINT_copy(r, b))
            return 0;
        return 1;
    }

    if (EC_POINT_is_at_infinity(group, b)) {
        if (!EC_POINT_copy(r, a))
            return 0;
        return 1;
    }

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0))
            return 0;
    }

    BN_CTX_start(ctx);
    x0 = BN_CTX_get(ctx);
    y0 = BN_CTX_get(ctx);
    x1 = BN_CTX_get(ctx);
    y1 = BN_CTX_get(ctx);
    x2 = BN_CTX_get(ctx);
    y2 = BN_CTX_get(ctx);
    s = BN_CTX_get(ctx);
    t = BN_CTX_get(ctx);
    if (t == ((void*)0))
        goto err;

    if (a->Z_is_one) {
        if (!BN_copy(x0, a->X))
            goto err;
        if (!BN_copy(y0, a->Y))
            goto err;
    } else {
        if (!EC_POINT_get_affine_coordinates(group, a, x0, y0, ctx))
            goto err;
    }
    if (b->Z_is_one) {
        if (!BN_copy(x1, b->X))
            goto err;
        if (!BN_copy(y1, b->Y))
            goto err;
    } else {
        if (!EC_POINT_get_affine_coordinates(group, b, x1, y1, ctx))
            goto err;
    }

    if (BN_GF2m_cmp(x0, x1)) {
        if (!BN_GF2m_add(t, x0, x1))
            goto err;
        if (!BN_GF2m_add(s, y0, y1))
            goto err;
        if (!group->meth->field_div(group, s, s, t, ctx))
            goto err;
        if (!group->meth->field_sqr(group, x2, s, ctx))
            goto err;
        if (!BN_GF2m_add(x2, x2, group->a))
            goto err;
        if (!BN_GF2m_add(x2, x2, s))
            goto err;
        if (!BN_GF2m_add(x2, x2, t))
            goto err;
    } else {
        if (BN_GF2m_cmp(y0, y1) || BN_is_zero(x1)) {
            if (!EC_POINT_set_to_infinity(group, r))
                goto err;
            ret = 1;
            goto err;
        }
        if (!group->meth->field_div(group, s, y1, x1, ctx))
            goto err;
        if (!BN_GF2m_add(s, s, x1))
            goto err;

        if (!group->meth->field_sqr(group, x2, s, ctx))
            goto err;
        if (!BN_GF2m_add(x2, x2, s))
            goto err;
        if (!BN_GF2m_add(x2, x2, group->a))
            goto err;
    }

    if (!BN_GF2m_add(y2, x1, x2))
        goto err;
    if (!group->meth->field_mul(group, y2, y2, s, ctx))
        goto err;
    if (!BN_GF2m_add(y2, y2, x2))
        goto err;
    if (!BN_GF2m_add(y2, y2, y1))
        goto err;

    if (!EC_POINT_set_affine_coordinates(group, r, x2, y2, ctx))
        goto err;

    ret = 1;

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}
