
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 int mp_isodd (int *) ;

int crypto_bignum_is_odd(const struct crypto_bignum *a)
{
 return mp_isodd((mp_int *) a);
}
