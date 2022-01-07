
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int * q; int method_mont_p; int * p; int * g; TYPE_1__* meth; int lock; int * priv_key; } ;
struct TYPE_5__ {int (* bn_mod_exp ) (TYPE_2__*,int *,int *,int *,int *,int *,int ) ;} ;
typedef TYPE_2__ DSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int BN_MONT_CTX_set_locked (int *,int ,int *,int *) ;
 int BN_add (int *,int *,int *) ;
 int BN_clear_free (int *) ;
 int BN_consttime_swap (int ,int *,int *,int) ;
 int BN_generate_dsa_nonce (int *,int *,int *,unsigned char const*,int,int *) ;
 int BN_is_bit_set (int *,int) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod (int *,int *,int *,int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_priv_rand_range (int *,int *) ;
 int BN_set_flags (int *,int ) ;
 int DSA_FLAG_CACHE_MONT_P ;
 int DSA_F_DSA_SIGN_SETUP ;
 int DSA_R_INVALID_PARAMETERS ;
 int DSA_R_MISSING_PARAMETERS ;
 int DSA_R_MISSING_PRIVATE_KEY ;
 int DSAerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int bn_get_top (int *) ;
 int bn_wexpand (int *,int) ;
 int * dsa_mod_inverse_fermat (int *,int *,int *) ;
 int stub1 (TYPE_2__*,int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static int dsa_sign_setup(DSA *dsa, BN_CTX *ctx_in,
                          BIGNUM **kinvp, BIGNUM **rp,
                          const unsigned char *dgst, int dlen)
{
    BN_CTX *ctx = ((void*)0);
    BIGNUM *k, *kinv = ((void*)0), *r = *rp;
    BIGNUM *l;
    int ret = 0;
    int q_bits, q_words;

    if (!dsa->p || !dsa->q || !dsa->g) {
        DSAerr(DSA_F_DSA_SIGN_SETUP, DSA_R_MISSING_PARAMETERS);
        return 0;
    }


    if (BN_is_zero(dsa->p) || BN_is_zero(dsa->q) || BN_is_zero(dsa->g)) {
        DSAerr(DSA_F_DSA_SIGN_SETUP, DSA_R_INVALID_PARAMETERS);
        return 0;
    }
    if (dsa->priv_key == ((void*)0)) {
        DSAerr(DSA_F_DSA_SIGN_SETUP, DSA_R_MISSING_PRIVATE_KEY);
        return 0;
    }

    k = BN_new();
    l = BN_new();
    if (k == ((void*)0) || l == ((void*)0))
        goto err;

    if (ctx_in == ((void*)0)) {
        if ((ctx = BN_CTX_new()) == ((void*)0))
            goto err;
    } else
        ctx = ctx_in;


    q_bits = BN_num_bits(dsa->q);
    q_words = bn_get_top(dsa->q);
    if (!bn_wexpand(k, q_words + 2)
        || !bn_wexpand(l, q_words + 2))
        goto err;


    do {
        if (dgst != ((void*)0)) {




            if (!BN_generate_dsa_nonce(k, dsa->q, dsa->priv_key, dgst,
                                       dlen, ctx))
                goto err;
        } else if (!BN_priv_rand_range(k, dsa->q))
            goto err;
    } while (BN_is_zero(k));

    BN_set_flags(k, BN_FLG_CONSTTIME);
    BN_set_flags(l, BN_FLG_CONSTTIME);

    if (dsa->flags & DSA_FLAG_CACHE_MONT_P) {
        if (!BN_MONT_CTX_set_locked(&dsa->method_mont_p,
                                    dsa->lock, dsa->p, ctx))
            goto err;
    }
    if (!BN_add(l, k, dsa->q)
        || !BN_add(k, l, dsa->q))
        goto err;

    BN_consttime_swap(BN_is_bit_set(l, q_bits), k, l, q_words + 2);

    if ((dsa)->meth->bn_mod_exp != ((void*)0)) {
            if (!dsa->meth->bn_mod_exp(dsa, r, dsa->g, k, dsa->p, ctx,
                                       dsa->method_mont_p))
                goto err;
    } else {
            if (!BN_mod_exp_mont(r, dsa->g, k, dsa->p, ctx, dsa->method_mont_p))
                goto err;
    }

    if (!BN_mod(r, r, dsa->q, ctx))
        goto err;


    if ((kinv = dsa_mod_inverse_fermat(k, dsa->q, ctx)) == ((void*)0))
        goto err;

    BN_clear_free(*kinvp);
    *kinvp = kinv;
    kinv = ((void*)0);
    ret = 1;
 err:
    if (!ret)
        DSAerr(DSA_F_DSA_SIGN_SETUP, ERR_R_BN_LIB);
    if (ctx != ctx_in)
        BN_CTX_free(ctx);
    BN_clear_free(k);
    BN_clear_free(l);
    return ret;
}
