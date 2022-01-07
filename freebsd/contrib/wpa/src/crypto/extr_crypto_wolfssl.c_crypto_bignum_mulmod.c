
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 scalar_t__ MP_OKAY ;
 scalar_t__ TEST_FAIL () ;
 scalar_t__ mp_mulmod (int *,int *,int *,int *) ;

int crypto_bignum_mulmod(const struct crypto_bignum *a,
    const struct crypto_bignum *b,
    const struct crypto_bignum *m,
    struct crypto_bignum *d)
{
 if (TEST_FAIL())
  return -1;

 return mp_mulmod((mp_int *) a, (mp_int *) b, (mp_int *) m,
    (mp_int *) d) == MP_OKAY ? 0 : -1;
}
