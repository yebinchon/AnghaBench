
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int length; int * priv_key; int * pub_key; int p; int g; TYPE_1__* meth; int q; int lock; int method_mont_p; } ;
struct TYPE_5__ {int (* bn_mod_exp ) (TYPE_2__*,int *,int ,int *,int ,int *,int *) ;} ;
typedef TYPE_2__ DH ;
typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int * BN_MONT_CTX_set_locked (int *,int ,int ,int *) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ONE ;
 int BN_clear_bit (int *,int ) ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int BN_is_bit_set (int ,int) ;
 scalar_t__ BN_is_one (int *) ;
 scalar_t__ BN_is_word (int ,int ) ;
 scalar_t__ BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_num_bits (int ) ;
 int BN_priv_rand (int *,unsigned int,int ,int ) ;
 int BN_priv_rand_range (int *,int ) ;
 int * BN_secure_new () ;
 int BN_with_flags (int *,int *,int ) ;
 int DH_FLAG_CACHE_MONT_P ;
 int DH_F_GENERATE_KEY ;
 int DH_GENERATOR_2 ;
 int DH_R_MODULUS_TOO_LARGE ;
 int DHerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int OPENSSL_DH_MAX_MODULUS_BITS ;
 int stub1 (TYPE_2__*,int *,int ,int *,int ,int *,int *) ;

__attribute__((used)) static int generate_key(DH *dh)
{
    int ok = 0;
    int generate_new_key = 0;
    unsigned l;
    BN_CTX *ctx = ((void*)0);
    BN_MONT_CTX *mont = ((void*)0);
    BIGNUM *pub_key = ((void*)0), *priv_key = ((void*)0);

    if (BN_num_bits(dh->p) > OPENSSL_DH_MAX_MODULUS_BITS) {
        DHerr(DH_F_GENERATE_KEY, DH_R_MODULUS_TOO_LARGE);
        return 0;
    }

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;

    if (dh->priv_key == ((void*)0)) {
        priv_key = BN_secure_new();
        if (priv_key == ((void*)0))
            goto err;
        generate_new_key = 1;
    } else
        priv_key = dh->priv_key;

    if (dh->pub_key == ((void*)0)) {
        pub_key = BN_new();
        if (pub_key == ((void*)0))
            goto err;
    } else
        pub_key = dh->pub_key;

    if (dh->flags & DH_FLAG_CACHE_MONT_P) {
        mont = BN_MONT_CTX_set_locked(&dh->method_mont_p,
                                      dh->lock, dh->p, ctx);
        if (!mont)
            goto err;
    }

    if (generate_new_key) {
        if (dh->q) {
            do {
                if (!BN_priv_rand_range(priv_key, dh->q))
                    goto err;
            }
            while (BN_is_zero(priv_key) || BN_is_one(priv_key));
        } else {

            l = dh->length ? dh->length : BN_num_bits(dh->p) - 1;
            if (!BN_priv_rand(priv_key, l, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY))
                goto err;




            if (BN_is_word(dh->g, DH_GENERATOR_2) && !BN_is_bit_set(dh->p, 2)) {

                if (!BN_clear_bit(priv_key, 0))
                    goto err;
            }
        }
    }

    {
        BIGNUM *prk = BN_new();

        if (prk == ((void*)0))
            goto err;
        BN_with_flags(prk, priv_key, BN_FLG_CONSTTIME);

        if (!dh->meth->bn_mod_exp(dh, pub_key, dh->g, prk, dh->p, ctx, mont)) {
            BN_clear_free(prk);
            goto err;
        }

        BN_clear_free(prk);
    }

    dh->pub_key = pub_key;
    dh->priv_key = priv_key;
    ok = 1;
 err:
    if (ok != 1)
        DHerr(DH_F_GENERATE_KEY, ERR_R_BN_LIB);

    if (pub_key != dh->pub_key)
        BN_free(pub_key);
    if (priv_key != dh->priv_key)
        BN_free(priv_key);
    BN_CTX_free(ctx);
    return ok;
}
