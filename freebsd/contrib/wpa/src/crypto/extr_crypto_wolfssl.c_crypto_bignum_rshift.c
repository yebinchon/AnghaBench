
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 scalar_t__ MP_OKAY ;
 scalar_t__ mp_copy (int *,int *) ;
 int mp_rshb (int *,int) ;

int crypto_bignum_rshift(const struct crypto_bignum *a, int n,
    struct crypto_bignum *r)
{
 if (mp_copy((mp_int *) a, (mp_int *) r) != MP_OKAY)
  return -1;
 mp_rshb((mp_int *) r, n);
 return 0;
}
