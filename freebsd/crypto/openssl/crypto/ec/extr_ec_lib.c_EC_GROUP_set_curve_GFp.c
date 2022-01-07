
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int EC_GROUP_set_curve (int *,int const*,int const*,int const*,int *) ;

int EC_GROUP_set_curve_GFp(EC_GROUP *group, const BIGNUM *p, const BIGNUM *a,
                           const BIGNUM *b, BN_CTX *ctx)
{
    return EC_GROUP_set_curve(group, p, a, b, ctx);
}
