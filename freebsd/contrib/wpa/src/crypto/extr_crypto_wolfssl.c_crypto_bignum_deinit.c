
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 int mp_clear (int *) ;
 int mp_forcezero (int *) ;
 int os_free (int *) ;

void crypto_bignum_deinit(struct crypto_bignum *n, int clear)
{
 if (!n)
  return;

 if (clear)
  mp_forcezero((mp_int *) n);
 mp_clear((mp_int *) n);
 os_free((mp_int *) n);
}
