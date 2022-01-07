
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;


 scalar_t__ BN_new () ;
 scalar_t__ TEST_FAIL () ;

struct crypto_bignum * crypto_bignum_init(void)
{
 if (TEST_FAIL())
  return ((void*)0);
 return (struct crypto_bignum *) BN_new();
}
