
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 int BN_rand_range (int *,int const*) ;
 scalar_t__ TEST_FAIL () ;

int crypto_bignum_rand(struct crypto_bignum *r, const struct crypto_bignum *m)
{
 if (TEST_FAIL())
  return -1;
 return BN_rand_range((BIGNUM *) r, (const BIGNUM *) m) == 1 ? 0 : -1;
}
