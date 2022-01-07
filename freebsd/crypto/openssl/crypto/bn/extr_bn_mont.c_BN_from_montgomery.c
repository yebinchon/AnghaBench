
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int bn_check_top (int *) ;
 int bn_correct_top (int *) ;
 int bn_from_mont_fixed_top (int *,int const*,int *,int *) ;

int BN_from_montgomery(BIGNUM *ret, const BIGNUM *a, BN_MONT_CTX *mont,
                       BN_CTX *ctx)
{
    int retn;

    retn = bn_from_mont_fixed_top(ret, a, mont, ctx);
    bn_correct_top(ret);
    bn_check_top(ret);

    return retn;
}
