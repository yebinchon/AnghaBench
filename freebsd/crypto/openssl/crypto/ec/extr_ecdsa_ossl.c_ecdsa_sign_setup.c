
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int *) ;
 int BN_generate_dsa_nonce (int *,int const*,int const*,unsigned char const*,int,int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_nnmod (int *,int *,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_priv_rand_range (int *,int const*) ;
 int BN_set_bit (int *,int) ;
 int EC_F_ECDSA_SIGN_SETUP ;
 int * EC_GROUP_get0_order (int const*) ;
 int EC_KEY_can_sign (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_private_key (int *) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_get_affine_coordinates (int const*,int *,int *,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int *,int *,int *,int *) ;
 int * EC_POINT_new (int const*) ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ;
 int EC_R_MISSING_PRIVATE_KEY ;
 int EC_R_RANDOM_NUMBER_GENERATION_FAILED ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ec_group_do_inverse_ord (int const*,int *,int *,int *) ;

__attribute__((used)) static int ecdsa_sign_setup(EC_KEY *eckey, BN_CTX *ctx_in,
                            BIGNUM **kinvp, BIGNUM **rp,
                            const unsigned char *dgst, int dlen)
{
    BN_CTX *ctx = ((void*)0);
    BIGNUM *k = ((void*)0), *r = ((void*)0), *X = ((void*)0);
    const BIGNUM *order;
    EC_POINT *tmp_point = ((void*)0);
    const EC_GROUP *group;
    int ret = 0;
    int order_bits;
    const BIGNUM *priv_key;

    if (eckey == ((void*)0) || (group = EC_KEY_get0_group(eckey)) == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if ((priv_key = EC_KEY_get0_private_key(eckey)) == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIGN_SETUP, EC_R_MISSING_PRIVATE_KEY);
        return 0;
    }

    if (!EC_KEY_can_sign(eckey)) {
        ECerr(EC_F_ECDSA_SIGN_SETUP, EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return 0;
    }

    if ((ctx = ctx_in) == ((void*)0)) {
        if ((ctx = BN_CTX_new()) == ((void*)0)) {
            ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    k = BN_new();
    r = BN_new();
    X = BN_new();
    if (k == ((void*)0) || r == ((void*)0) || X == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if ((tmp_point = EC_POINT_new(group)) == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_EC_LIB);
        goto err;
    }
    order = EC_GROUP_get0_order(group);


    order_bits = BN_num_bits(order);
    if (!BN_set_bit(k, order_bits)
        || !BN_set_bit(r, order_bits)
        || !BN_set_bit(X, order_bits))
        goto err;

    do {

        do {
            if (dgst != ((void*)0)) {
                if (!BN_generate_dsa_nonce(k, order, priv_key,
                                           dgst, dlen, ctx)) {
                    ECerr(EC_F_ECDSA_SIGN_SETUP,
                          EC_R_RANDOM_NUMBER_GENERATION_FAILED);
                    goto err;
                }
            } else {
                if (!BN_priv_rand_range(k, order)) {
                    ECerr(EC_F_ECDSA_SIGN_SETUP,
                          EC_R_RANDOM_NUMBER_GENERATION_FAILED);
                    goto err;
                }
            }
        } while (BN_is_zero(k));


        if (!EC_POINT_mul(group, tmp_point, k, ((void*)0), ((void*)0), ctx)) {
            ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_EC_LIB);
            goto err;
        }

        if (!EC_POINT_get_affine_coordinates(group, tmp_point, X, ((void*)0), ctx)) {
            ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_EC_LIB);
            goto err;
        }

        if (!BN_nnmod(r, X, order, ctx)) {
            ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_BN_LIB);
            goto err;
        }
    } while (BN_is_zero(r));


    if (!ec_group_do_inverse_ord(group, k, k, ctx)) {
        ECerr(EC_F_ECDSA_SIGN_SETUP, ERR_R_BN_LIB);
        goto err;
    }


    BN_clear_free(*rp);
    BN_clear_free(*kinvp);

    *rp = r;
    *kinvp = k;
    ret = 1;
 err:
    if (!ret) {
        BN_clear_free(k);
        BN_clear_free(r);
    }
    if (ctx != ctx_in)
        BN_CTX_free(ctx);
    EC_POINT_free(tmp_point);
    BN_clear_free(X);
    return ret;
}
