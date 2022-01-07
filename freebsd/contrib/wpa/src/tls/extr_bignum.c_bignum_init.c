
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bignum {int dummy; } ;
typedef int mp_int ;


 scalar_t__ MP_OKAY ;
 scalar_t__ mp_init (int *) ;
 int os_free (struct bignum*) ;
 struct bignum* os_zalloc (int) ;

struct bignum * bignum_init(void)
{
 struct bignum *n = os_zalloc(sizeof(mp_int));
 if (n == ((void*)0))
  return ((void*)0);
 if (mp_init((mp_int *) n) != MP_OKAY) {
  os_free(n);
  n = ((void*)0);
 }
 return n;
}
