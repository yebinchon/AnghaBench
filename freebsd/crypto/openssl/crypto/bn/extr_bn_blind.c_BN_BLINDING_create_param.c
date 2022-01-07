
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* bn_mod_exp ) (int const*,int const*,int const*,int const*,int *,int *) ;int * m_ctx; int const* A; int const* Ai; int const* mod; int const* e; } ;
typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef TYPE_1__ BN_BLINDING ;
typedef int const BIGNUM ;


 int BN_BLINDING_free (TYPE_1__*) ;
 TYPE_1__* BN_BLINDING_new (int *,int *,int const*) ;
 int BN_F_BN_BLINDING_CREATE_PARAM ;
 int BN_R_TOO_MANY_ITERATIONS ;
 int const* BN_dup (int const*) ;
 int BN_free (int const*) ;
 int BN_mod_exp (int const*,int const*,int const*,int const*,int *) ;
 void* BN_new () ;
 int BN_priv_rand_range (int const*,int const*) ;
 int BNerr (int ,int ) ;
 int bn_to_mont_fixed_top (int const*,int const*,int *,int *) ;
 scalar_t__ int_bn_mod_inverse (int const*,int const*,int const*,int *,int*) ;
 int stub1 (int const*,int const*,int const*,int const*,int *,int *) ;

BN_BLINDING *BN_BLINDING_create_param(BN_BLINDING *b,
                                      const BIGNUM *e, BIGNUM *m, BN_CTX *ctx,
                                      int (*bn_mod_exp) (BIGNUM *r,
                                                         const BIGNUM *a,
                                                         const BIGNUM *p,
                                                         const BIGNUM *m,
                                                         BN_CTX *ctx,
                                                         BN_MONT_CTX *m_ctx),
                                      BN_MONT_CTX *m_ctx)
{
    int retry_counter = 32;
    BN_BLINDING *ret = ((void*)0);

    if (b == ((void*)0))
        ret = BN_BLINDING_new(((void*)0), ((void*)0), m);
    else
        ret = b;

    if (ret == ((void*)0))
        goto err;

    if (ret->A == ((void*)0) && (ret->A = BN_new()) == ((void*)0))
        goto err;
    if (ret->Ai == ((void*)0) && (ret->Ai = BN_new()) == ((void*)0))
        goto err;

    if (e != ((void*)0)) {
        BN_free(ret->e);
        ret->e = BN_dup(e);
    }
    if (ret->e == ((void*)0))
        goto err;

    if (bn_mod_exp != ((void*)0))
        ret->bn_mod_exp = bn_mod_exp;
    if (m_ctx != ((void*)0))
        ret->m_ctx = m_ctx;

    do {
        int rv;
        if (!BN_priv_rand_range(ret->A, ret->mod))
            goto err;
        if (int_bn_mod_inverse(ret->Ai, ret->A, ret->mod, ctx, &rv))
            break;




        if (!rv)
            goto err;

        if (retry_counter-- == 0) {
            BNerr(BN_F_BN_BLINDING_CREATE_PARAM, BN_R_TOO_MANY_ITERATIONS);
            goto err;
        }
    } while (1);

    if (ret->bn_mod_exp != ((void*)0) && ret->m_ctx != ((void*)0)) {
        if (!ret->bn_mod_exp(ret->A, ret->A, ret->e, ret->mod, ctx, ret->m_ctx))
            goto err;
    } else {
        if (!BN_mod_exp(ret->A, ret->A, ret->e, ret->mod, ctx))
            goto err;
    }

    if (ret->m_ctx != ((void*)0)) {
        if (!bn_to_mont_fixed_top(ret->Ai, ret->Ai, ret->m_ctx, ctx)
            || !bn_to_mont_fixed_top(ret->A, ret->A, ret->m_ctx, ctx))
            goto err;
    }

    return ret;
 err:
    if (b == ((void*)0)) {
        BN_BLINDING_free(ret);
        ret = ((void*)0);
    }

    return ret;
}
