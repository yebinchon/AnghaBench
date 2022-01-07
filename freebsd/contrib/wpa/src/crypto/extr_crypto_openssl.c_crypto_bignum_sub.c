
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 scalar_t__ BN_sub (int *,int const*,int const*) ;
 scalar_t__ TEST_FAIL () ;

int crypto_bignum_sub(const struct crypto_bignum *a,
        const struct crypto_bignum *b,
        struct crypto_bignum *c)
{
 if (TEST_FAIL())
  return -1;
 return BN_sub((BIGNUM *) c, (const BIGNUM *) a, (const BIGNUM *) b) ?
  0 : -1;
}
