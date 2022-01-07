
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int EC_GROUP_get_curve (int const*,int *,int *,int *,int *) ;

int EC_GROUP_get_curve_GF2m(const EC_GROUP *group, BIGNUM *p, BIGNUM *a,
                            BIGNUM *b, BN_CTX *ctx)
{
    return EC_GROUP_get_curve(group, p, a, b, ctx);
}
