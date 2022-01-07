
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 int BN_cmp (int const*,int const*) ;

int crypto_bignum_cmp(const struct crypto_bignum *a,
        const struct crypto_bignum *b)
{
 return BN_cmp((const BIGNUM *) a, (const BIGNUM *) b);
}
