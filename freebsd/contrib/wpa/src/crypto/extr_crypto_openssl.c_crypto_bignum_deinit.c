
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int BN_free (int *) ;

void crypto_bignum_deinit(struct crypto_bignum *n, int clear)
{
 if (clear)
  BN_clear_free((BIGNUM *) n);
 else
  BN_free((BIGNUM *) n);
}
