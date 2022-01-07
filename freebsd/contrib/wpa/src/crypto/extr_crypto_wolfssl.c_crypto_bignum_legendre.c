
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 int MP_OKAY ;
 scalar_t__ TEST_FAIL () ;
 int mp_clear (int *) ;
 int mp_exptmod (int *,int *,int *,int *) ;
 int mp_init (int *) ;
 scalar_t__ mp_isone (int *) ;
 scalar_t__ mp_iszero (int *) ;
 int mp_rshb (int *,int) ;
 int mp_sub_d (int *,int,int *) ;

int crypto_bignum_legendre(const struct crypto_bignum *a,
      const struct crypto_bignum *p)
{
 mp_int t;
 int ret;
 int res = -2;

 if (TEST_FAIL())
  return -2;

 if (mp_init(&t) != MP_OKAY)
  return -2;


 ret = mp_sub_d((mp_int *) p, 1, &t);
 if (ret == MP_OKAY)
  mp_rshb(&t, 1);
 if (ret == MP_OKAY)
  ret = mp_exptmod((mp_int *) a, &t, (mp_int *) p, &t);
 if (ret == MP_OKAY) {
  if (mp_isone(&t))
   res = 1;
  else if (mp_iszero(&t))
   res = 0;
  else
   res = -1;
 }

 mp_clear(&t);
 return res;
}
