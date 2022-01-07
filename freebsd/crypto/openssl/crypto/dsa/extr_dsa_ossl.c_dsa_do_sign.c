
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * q; int * priv_key; int * g; int * p; } ;
struct TYPE_8__ {int * s; int * r; } ;
typedef TYPE_1__ DSA_SIG ;
typedef TYPE_2__ DSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 int * BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_clear_free (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod_add_quick (int *,int *,int *,int *) ;
 int * BN_mod_inverse (int *,int *,int *,int *) ;
 int BN_mod_mul (int *,int *,int *,int *,int *) ;
 void* BN_new () ;
 scalar_t__ BN_num_bits (int *) ;
 int BN_num_bytes (int *) ;
 int BN_priv_rand (int *,scalar_t__,int ,int ) ;
 int BN_set_flags (int *,int ) ;
 int DSA_F_DSA_DO_SIGN ;
 int DSA_R_MISSING_PARAMETERS ;
 int DSA_R_MISSING_PRIVATE_KEY ;
 int DSA_SIG_free (TYPE_1__*) ;
 TYPE_1__* DSA_SIG_new () ;
 int DSAerr (int ,int) ;
 int ERR_R_BN_LIB ;
 int dsa_sign_setup (TYPE_2__*,int *,int **,int **,unsigned char const*,int) ;

__attribute__((used)) static DSA_SIG *dsa_do_sign(const unsigned char *dgst, int dlen, DSA *dsa)
{
    BIGNUM *kinv = ((void*)0);
    BIGNUM *m, *blind, *blindm, *tmp;
    BN_CTX *ctx = ((void*)0);
    int reason = ERR_R_BN_LIB;
    DSA_SIG *ret = ((void*)0);
    int rv = 0;

    if (dsa->p == ((void*)0) || dsa->q == ((void*)0) || dsa->g == ((void*)0)) {
        reason = DSA_R_MISSING_PARAMETERS;
        goto err;
    }
    if (dsa->priv_key == ((void*)0)) {
        reason = DSA_R_MISSING_PRIVATE_KEY;
        goto err;
    }

    ret = DSA_SIG_new();
    if (ret == ((void*)0))
        goto err;
    ret->r = BN_new();
    ret->s = BN_new();
    if (ret->r == ((void*)0) || ret->s == ((void*)0))
        goto err;

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    m = BN_CTX_get(ctx);
    blind = BN_CTX_get(ctx);
    blindm = BN_CTX_get(ctx);
    tmp = BN_CTX_get(ctx);
    if (tmp == ((void*)0))
        goto err;

 redo:
    if (!dsa_sign_setup(dsa, ctx, &kinv, &ret->r, dgst, dlen))
        goto err;

    if (dlen > BN_num_bytes(dsa->q))





        dlen = BN_num_bytes(dsa->q);
    if (BN_bin2bn(dgst, dlen, m) == ((void*)0))
        goto err;
    do {
        if (!BN_priv_rand(blind, BN_num_bits(dsa->q) - 1,
                          BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY))
            goto err;
    } while (BN_is_zero(blind));
    BN_set_flags(blind, BN_FLG_CONSTTIME);
    BN_set_flags(blindm, BN_FLG_CONSTTIME);
    BN_set_flags(tmp, BN_FLG_CONSTTIME);


    if (!BN_mod_mul(tmp, blind, dsa->priv_key, dsa->q, ctx))
        goto err;
    if (!BN_mod_mul(tmp, tmp, ret->r, dsa->q, ctx))
        goto err;


    if (!BN_mod_mul(blindm, blind, m, dsa->q, ctx))
        goto err;


    if (!BN_mod_add_quick(ret->s, tmp, blindm, dsa->q))
        goto err;


    if (!BN_mod_mul(ret->s, ret->s, kinv, dsa->q, ctx))
        goto err;


    if (BN_mod_inverse(blind, blind, dsa->q, ctx) == ((void*)0))
        goto err;
    if (!BN_mod_mul(ret->s, ret->s, blind, dsa->q, ctx))
        goto err;





    if (BN_is_zero(ret->r) || BN_is_zero(ret->s))
        goto redo;

    rv = 1;

 err:
    if (rv == 0) {
        DSAerr(DSA_F_DSA_DO_SIGN, reason);
        DSA_SIG_free(ret);
        ret = ((void*)0);
    }
    BN_CTX_free(ctx);
    BN_clear_free(kinv);
    return ret;
}
