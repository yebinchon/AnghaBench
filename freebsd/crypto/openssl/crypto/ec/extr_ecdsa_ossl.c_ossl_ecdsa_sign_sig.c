
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * r; int * s; } ;
struct TYPE_8__ {int mont_data; } ;
typedef int EC_KEY ;
typedef TYPE_1__ EC_GROUP ;
typedef TYPE_2__ ECDSA_SIG ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_clear_free (int *) ;
 int * BN_copy (int *,int const*) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod_mul_montgomery (int *,int *,int const*,int ,int *) ;
 void* BN_new () ;
 int BN_num_bits (int const*) ;
 int BN_rshift (int *,int *,int) ;
 int ECDSA_SIG_free (TYPE_2__*) ;
 TYPE_2__* ECDSA_SIG_new () ;
 int EC_F_OSSL_ECDSA_SIGN_SIG ;
 int * EC_GROUP_get0_order (TYPE_1__ const*) ;
 int EC_KEY_can_sign (int *) ;
 TYPE_1__* EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_private_key (int *) ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ;
 int EC_R_MISSING_PRIVATE_KEY ;
 int EC_R_NEED_NEW_SETUP_VALUES ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_ECDSA_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int bn_mod_add_fixed_top (int *,int *,int *,int const*) ;
 int bn_mul_mont_fixed_top (int *,int *,int const*,int ,int *) ;
 int bn_to_mont_fixed_top (int *,int *,int ,int *) ;
 int ecdsa_sign_setup (int *,int *,int **,int **,unsigned char const*,int) ;

ECDSA_SIG *ossl_ecdsa_sign_sig(const unsigned char *dgst, int dgst_len,
                               const BIGNUM *in_kinv, const BIGNUM *in_r,
                               EC_KEY *eckey)
{
    int ok = 0, i;
    BIGNUM *kinv = ((void*)0), *s, *m = ((void*)0);
    const BIGNUM *order, *ckinv;
    BN_CTX *ctx = ((void*)0);
    const EC_GROUP *group;
    ECDSA_SIG *ret;
    const BIGNUM *priv_key;

    group = EC_KEY_get0_group(eckey);
    priv_key = EC_KEY_get0_private_key(eckey);

    if (group == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    if (priv_key == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, EC_R_MISSING_PRIVATE_KEY);
        return ((void*)0);
    }

    if (!EC_KEY_can_sign(eckey)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return ((void*)0);
    }

    ret = ECDSA_SIG_new();
    if (ret == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->r = BN_new();
    ret->s = BN_new();
    if (ret->r == ((void*)0) || ret->s == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    s = ret->s;

    if ((ctx = BN_CTX_new()) == ((void*)0)
        || (m = BN_new()) == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    order = EC_GROUP_get0_order(group);
    i = BN_num_bits(order);



    if (8 * dgst_len > i)
        dgst_len = (i + 7) / 8;
    if (!BN_bin2bn(dgst, dgst_len, m)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
        goto err;
    }

    if ((8 * dgst_len > i) && !BN_rshift(m, m, 8 - (i & 0x7))) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
        goto err;
    }
    do {
        if (in_kinv == ((void*)0) || in_r == ((void*)0)) {
            if (!ecdsa_sign_setup(eckey, ctx, &kinv, &ret->r, dgst, dgst_len)) {
                ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_ECDSA_LIB);
                goto err;
            }
            ckinv = kinv;
        } else {
            ckinv = in_kinv;
            if (BN_copy(ret->r, in_r) == ((void*)0)) {
                ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
        if (!bn_to_mont_fixed_top(s, ret->r, group->mont_data, ctx)
            || !bn_mul_mont_fixed_top(s, s, priv_key, group->mont_data, ctx)) {
            ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
            goto err;
        }
        if (!bn_mod_add_fixed_top(s, s, m, order)) {
            ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
            goto err;
        }




        if (!bn_to_mont_fixed_top(s, s, group->mont_data, ctx)
            || !BN_mod_mul_montgomery(s, s, ckinv, group->mont_data, ctx)) {
            ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
            goto err;
        }

        if (BN_is_zero(s)) {




            if (in_kinv != ((void*)0) && in_r != ((void*)0)) {
                ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, EC_R_NEED_NEW_SETUP_VALUES);
                goto err;
            }
        } else {

            break;
        }
    } while (1);

    ok = 1;
 err:
    if (!ok) {
        ECDSA_SIG_free(ret);
        ret = ((void*)0);
    }
    BN_CTX_free(ctx);
    BN_clear_free(m);
    BN_clear_free(kinv);
    return ret;
}
