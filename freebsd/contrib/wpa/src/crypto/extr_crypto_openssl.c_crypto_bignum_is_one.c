
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 int BN_is_one (int const*) ;

int crypto_bignum_is_one(const struct crypto_bignum *a)
{
 return BN_is_one((const BIGNUM *) a);
}
