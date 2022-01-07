
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
 int BN_add (int const*,int const*,int const*) ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 int BN_free (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_mod_add (int const*,int const*,int const*,int const*,int *) ;
 int BN_mod_mul (int const*,int const*,int const*,int const*,int *) ;
 int const* BN_new () ;
 int BN_priv_rand_range (int const*,int const*) ;
 int BN_sub (int const*,int const*,int const*) ;
 int const* BN_value_one () ;
 int * ECDSA_SIG_new () ;
 int ECDSA_SIG_set0 (int *,int const*,int const*) ;
 int const* EC_GROUP_get0_order (int const*) ;
 int * EC_KEY_get0_group (int const*) ;
 int const* EC_KEY_get0_private_key (int const*) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_get_affine_coordinates (int const*,int *,int const*,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int const*,int *,int *,int *) ;
 int * EC_POINT_new (int const*) ;
 int ERR_R_BN_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int SM2_F_SM2_SIG_GEN ;
 int SM2err (int ,int ) ;
 int ec_group_do_inverse_ord (int const*,int const*,int const*,int *) ;

__attribute__((used)) static ECDSA_SIG *sm2_sig_gen(const EC_KEY *key, const BIGNUM *e)
{
    const BIGNUM *dA = EC_KEY_get0_private_key(key);
    const EC_GROUP *group = EC_KEY_get0_group(key);
    const BIGNUM *order = EC_GROUP_get0_order(group);
    ECDSA_SIG *sig = ((void*)0);
    EC_POINT *kG = ((void*)0);
    BN_CTX *ctx = ((void*)0);
    BIGNUM *k = ((void*)0);
    BIGNUM *rk = ((void*)0);
    BIGNUM *r = ((void*)0);
    BIGNUM *s = ((void*)0);
    BIGNUM *x1 = ((void*)0);
    BIGNUM *tmp = ((void*)0);

    kG = EC_POINT_new(group);
    ctx = BN_CTX_new();
    if (kG == ((void*)0) || ctx == ((void*)0)) {
        SM2err(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    BN_CTX_start(ctx);
    k = BN_CTX_get(ctx);
    rk = BN_CTX_get(ctx);
    x1 = BN_CTX_get(ctx);
    tmp = BN_CTX_get(ctx);
    if (tmp == ((void*)0)) {
        SM2err(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
        goto done;
    }





    r = BN_new();
    s = BN_new();

    if (r == ((void*)0) || s == ((void*)0)) {
        SM2err(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    for (;;) {
        if (!BN_priv_rand_range(k, order)) {
            SM2err(SM2_F_SM2_SIG_GEN, ERR_R_INTERNAL_ERROR);
            goto done;
        }

        if (!EC_POINT_mul(group, kG, k, ((void*)0), ((void*)0), ctx)
                || !EC_POINT_get_affine_coordinates(group, kG, x1, ((void*)0),
                                                    ctx)
                || !BN_mod_add(r, e, x1, order, ctx)) {
            SM2err(SM2_F_SM2_SIG_GEN, ERR_R_INTERNAL_ERROR);
            goto done;
        }


        if (BN_is_zero(r))
            continue;

        if (!BN_add(rk, r, k)) {
            SM2err(SM2_F_SM2_SIG_GEN, ERR_R_INTERNAL_ERROR);
            goto done;
        }

        if (BN_cmp(rk, order) == 0)
            continue;

        if (!BN_add(s, dA, BN_value_one())
                || !ec_group_do_inverse_ord(group, s, s, ctx)
                || !BN_mod_mul(tmp, dA, r, order, ctx)
                || !BN_sub(tmp, k, tmp)
                || !BN_mod_mul(s, s, tmp, order, ctx)) {
            SM2err(SM2_F_SM2_SIG_GEN, ERR_R_BN_LIB);
            goto done;
        }

        sig = ECDSA_SIG_new();
        if (sig == ((void*)0)) {
            SM2err(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
            goto done;
        }


        ECDSA_SIG_set0(sig, r, s);
        break;
    }

 done:
    if (sig == ((void*)0)) {
        BN_free(r);
        BN_free(s);
    }

    BN_CTX_free(ctx);
    EC_POINT_free(kG);
    return sig;
}
