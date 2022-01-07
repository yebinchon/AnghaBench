
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 scalar_t__ BN_cmp (int *,int const*) ;
 scalar_t__ BN_is_one (int *) ;
 int BN_mod_exp_mont (int *,int *,int const*,int const*,int *,int *) ;
 int BN_mod_mul (int *,int *,int *,int const*,int *) ;
 int bn_check_top (int *) ;

__attribute__((used)) static int witness(BIGNUM *w, const BIGNUM *a, const BIGNUM *a1,
                   const BIGNUM *a1_odd, int k, BN_CTX *ctx,
                   BN_MONT_CTX *mont)
{
    if (!BN_mod_exp_mont(w, w, a1_odd, a, ctx, mont))
        return -1;
    if (BN_is_one(w))
        return 0;
    if (BN_cmp(w, a1) == 0)
        return 0;
    while (--k) {
        if (!BN_mod_mul(w, w, w, a, ctx))
            return -1;
        if (BN_is_one(w))
            return 1;

        if (BN_cmp(w, a1) == 0)
            return 0;
    }




    bn_check_top(w);
    return 1;
}
