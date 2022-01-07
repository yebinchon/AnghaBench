
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_mod_exp_mont (int *,int const*,int *,int const*,int *,int *) ;
 int * BN_new () ;
 scalar_t__ BN_set_word (int *,int) ;
 scalar_t__ BN_sub (int *,int const*,int *) ;

__attribute__((used)) static BIGNUM *dsa_mod_inverse_fermat(const BIGNUM *k, const BIGNUM *q,
                                      BN_CTX *ctx)
{
    BIGNUM *res = ((void*)0);
    BIGNUM *r, *e;

    if ((r = BN_new()) == ((void*)0))
        return ((void*)0);

    BN_CTX_start(ctx);
    if ((e = BN_CTX_get(ctx)) != ((void*)0)
            && BN_set_word(r, 2)
            && BN_sub(e, q, r)
            && BN_mod_exp_mont(r, k, e, q, ctx, ((void*)0)))
        res = r;
    else
        BN_free(r);
    BN_CTX_end(ctx);
    return res;
}
