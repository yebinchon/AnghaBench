
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 scalar_t__ MP_OKAY ;
 scalar_t__ TEST_FAIL () ;
 scalar_t__ mp_invmod (int *,int *,int *) ;

int crypto_bignum_inverse(const struct crypto_bignum *a,
     const struct crypto_bignum *m,
     struct crypto_bignum *r)
{
 if (TEST_FAIL())
  return -1;

 return mp_invmod((mp_int *) a, (mp_int *) m,
    (mp_int *) r) == MP_OKAY ? 0 : -1;
}
