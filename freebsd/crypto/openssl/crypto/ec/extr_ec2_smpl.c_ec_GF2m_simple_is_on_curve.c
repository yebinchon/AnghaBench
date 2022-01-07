
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int const* Y; int const* X; int Z_is_one; } ;
struct TYPE_11__ {int const* b; int const* a; TYPE_1__* meth; } ;
struct TYPE_10__ {int (* field_mul ) (TYPE_2__ const*,int const*,int const*,int const*,int *) ;int (* field_sqr ) (TYPE_2__ const*,int const*,int const*,int *) ;} ;
typedef TYPE_4__ EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int const* BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GF2m_add (int const*,int const*,int const*) ;
 int BN_is_zero (int const*) ;
 scalar_t__ EC_POINT_is_at_infinity (TYPE_2__ const*,TYPE_4__ const*) ;

int ec_GF2m_simple_is_on_curve(const EC_GROUP *group, const EC_POINT *point,
                               BN_CTX *ctx)
{
    int ret = -1;
    BN_CTX *new_ctx = ((void*)0);
    BIGNUM *lh, *y2;
    int (*field_mul) (const EC_GROUP *, BIGNUM *, const BIGNUM *,
                      const BIGNUM *, BN_CTX *);
    int (*field_sqr) (const EC_GROUP *, BIGNUM *, const BIGNUM *, BN_CTX *);

    if (EC_POINT_is_at_infinity(group, point))
        return 1;

    field_mul = group->meth->field_mul;
    field_sqr = group->meth->field_sqr;


    if (!point->Z_is_one)
        return -1;

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0))
            return -1;
    }

    BN_CTX_start(ctx);
    y2 = BN_CTX_get(ctx);
    lh = BN_CTX_get(ctx);
    if (lh == ((void*)0))
        goto err;







    if (!BN_GF2m_add(lh, point->X, group->a))
        goto err;
    if (!field_mul(group, lh, lh, point->X, ctx))
        goto err;
    if (!BN_GF2m_add(lh, lh, point->Y))
        goto err;
    if (!field_mul(group, lh, lh, point->X, ctx))
        goto err;
    if (!BN_GF2m_add(lh, lh, group->b))
        goto err;
    if (!field_sqr(group, y2, point->Y, ctx))
        goto err;
    if (!BN_GF2m_add(lh, lh, y2))
        goto err;
    ret = BN_is_zero(lh);

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}
