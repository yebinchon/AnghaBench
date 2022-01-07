
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* meth; } ;
struct TYPE_13__ {int flags; int (* group_get_curve ) (TYPE_2__ const*,int const*,int const*,int const*,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int const* BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 int EC_FLAGS_CUSTOM_CURVE ;
 int const* EC_GROUP_get0_cofactor (TYPE_2__ const*) ;
 int EC_GROUP_get0_generator (TYPE_2__ const*) ;
 int const* EC_GROUP_get0_order (TYPE_2__ const*) ;
 scalar_t__ EC_GROUP_get_curve_name (TYPE_2__ const*) ;
 int EC_GROUP_method_of (TYPE_2__ const*) ;
 scalar_t__ EC_METHOD_get_field_type (int ) ;
 scalar_t__ EC_POINT_cmp (TYPE_2__ const*,int ,int ,int *) ;
 int stub1 (TYPE_2__ const*,int const*,int const*,int const*,int *) ;
 int stub2 (TYPE_2__ const*,int const*,int const*,int const*,int *) ;

int EC_GROUP_cmp(const EC_GROUP *a, const EC_GROUP *b, BN_CTX *ctx)
{
    int r = 0;
    BIGNUM *a1, *a2, *a3, *b1, *b2, *b3;
    BN_CTX *ctx_new = ((void*)0);


    if (EC_METHOD_get_field_type(EC_GROUP_method_of(a)) !=
        EC_METHOD_get_field_type(EC_GROUP_method_of(b)))
        return 1;

    if (EC_GROUP_get_curve_name(a) && EC_GROUP_get_curve_name(b) &&
        EC_GROUP_get_curve_name(a) != EC_GROUP_get_curve_name(b))
        return 1;
    if (a->meth->flags & EC_FLAGS_CUSTOM_CURVE)
        return 0;

    if (ctx == ((void*)0))
        ctx_new = ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        return -1;

    BN_CTX_start(ctx);
    a1 = BN_CTX_get(ctx);
    a2 = BN_CTX_get(ctx);
    a3 = BN_CTX_get(ctx);
    b1 = BN_CTX_get(ctx);
    b2 = BN_CTX_get(ctx);
    b3 = BN_CTX_get(ctx);
    if (b3 == ((void*)0)) {
        BN_CTX_end(ctx);
        BN_CTX_free(ctx_new);
        return -1;
    }





    if (!a->meth->group_get_curve(a, a1, a2, a3, ctx) ||
        !b->meth->group_get_curve(b, b1, b2, b3, ctx))
        r = 1;

    if (r || BN_cmp(a1, b1) || BN_cmp(a2, b2) || BN_cmp(a3, b3))
        r = 1;


    if (r || EC_POINT_cmp(a, EC_GROUP_get0_generator(a),
                          EC_GROUP_get0_generator(b), ctx))
        r = 1;

    if (!r) {
        const BIGNUM *ao, *bo, *ac, *bc;

        ao = EC_GROUP_get0_order(a);
        bo = EC_GROUP_get0_order(b);
        ac = EC_GROUP_get0_cofactor(a);
        bc = EC_GROUP_get0_cofactor(b);
        if (ao == ((void*)0) || bo == ((void*)0)) {
            BN_CTX_end(ctx);
            BN_CTX_free(ctx_new);
            return -1;
        }
        if (BN_cmp(ao, bo) || BN_cmp(ac, bc))
            r = 1;
    }

    BN_CTX_end(ctx);
    BN_CTX_free(ctx_new);

    return r;
}
