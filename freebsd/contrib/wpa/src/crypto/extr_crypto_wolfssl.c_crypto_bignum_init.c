
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 scalar_t__ MP_OKAY ;
 scalar_t__ TEST_FAIL () ;
 scalar_t__ mp_init (int *) ;
 int os_free (int *) ;
 int * os_malloc (int) ;

struct crypto_bignum * crypto_bignum_init(void)
{
 mp_int *a;

 if (TEST_FAIL())
  return ((void*)0);

 a = os_malloc(sizeof(*a));
 if (!a || mp_init(a) != MP_OKAY) {
  os_free(a);
  a = ((void*)0);
 }

 return (struct crypto_bignum *) a;
}
