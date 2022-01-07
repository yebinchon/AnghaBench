
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 int BN_rshift (int *,int *,int) ;

int crypto_bignum_rshift(const struct crypto_bignum *a, int n,
    struct crypto_bignum *r)
{


 return BN_rshift((BIGNUM *) a, (BIGNUM *) r, n) == 1 ? 0 : -1;
}
