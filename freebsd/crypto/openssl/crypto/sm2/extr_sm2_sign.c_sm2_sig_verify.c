
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int ECDSA_SIG ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_free (int *) ;
 int const* BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_mod_add (int const*,int const*,int const*,int const*,int *) ;
 int const* BN_value_one () ;
 int ECDSA_SIG_get0 (int const*,int const**,int const**) ;
 int const* EC_GROUP_get0_order (int const*) ;
 int * EC_KEY_get0_group (int const*) ;
 int EC_KEY_get0_public_key (int const*) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_get_affine_coordinates (int const*,int *,int const*,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int const*,int ,int const*,int *) ;
 int * EC_POINT_new (int const*) ;
 int ERR_R_BN_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int SM2_F_SM2_SIG_VERIFY ;
 int SM2_R_BAD_SIGNATURE ;
 int SM2err (int ,int ) ;

__attribute__((used)) static int sm2_sig_verify(const EC_KEY *key, const ECDSA_SIG *sig,
                          const BIGNUM *e)
{
    int ret = 0;
    const EC_GROUP *group = EC_KEY_get0_group(key);
    const BIGNUM *order = EC_GROUP_get0_order(group);
    BN_CTX *ctx = ((void*)0);
    EC_POINT *pt = ((void*)0);
    BIGNUM *t = ((void*)0);
    BIGNUM *x1 = ((void*)0);
    const BIGNUM *r = ((void*)0);
    const BIGNUM *s = ((void*)0);

    ctx = BN_CTX_new();
    pt = EC_POINT_new(group);
    if (ctx == ((void*)0) || pt == ((void*)0)) {
        SM2err(SM2_F_SM2_SIG_VERIFY, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    BN_CTX_start(ctx);
    t = BN_CTX_get(ctx);
    x1 = BN_CTX_get(ctx);
    if (x1 == ((void*)0)) {
        SM2err(SM2_F_SM2_SIG_VERIFY, ERR_R_MALLOC_FAILURE);
        goto done;
    }
    ECDSA_SIG_get0(sig, &r, &s);

    if (BN_cmp(r, BN_value_one()) < 0
            || BN_cmp(s, BN_value_one()) < 0
            || BN_cmp(order, r) <= 0
            || BN_cmp(order, s) <= 0) {
        SM2err(SM2_F_SM2_SIG_VERIFY, SM2_R_BAD_SIGNATURE);
        goto done;
    }

    if (!BN_mod_add(t, r, s, order, ctx)) {
        SM2err(SM2_F_SM2_SIG_VERIFY, ERR_R_BN_LIB);
        goto done;
    }

    if (BN_is_zero(t)) {
        SM2err(SM2_F_SM2_SIG_VERIFY, SM2_R_BAD_SIGNATURE);
        goto done;
    }

    if (!EC_POINT_mul(group, pt, s, EC_KEY_get0_public_key(key), t, ctx)
            || !EC_POINT_get_affine_coordinates(group, pt, x1, ((void*)0), ctx)) {
        SM2err(SM2_F_SM2_SIG_VERIFY, ERR_R_EC_LIB);
        goto done;
    }

    if (!BN_mod_add(t, e, x1, order, ctx)) {
        SM2err(SM2_F_SM2_SIG_VERIFY, ERR_R_BN_LIB);
        goto done;
    }

    if (BN_cmp(r, t) == 0)
        ret = 1;

 done:
    EC_POINT_free(pt);
    BN_CTX_free(ctx);
    return ret;
}
