
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 scalar_t__ MP_OKAY ;
 scalar_t__ TEST_FAIL () ;
 scalar_t__ crypto_bignum_init () ;
 scalar_t__ mp_read_unsigned_bin (int *,int const*,size_t) ;
 int os_free (int *) ;

struct crypto_bignum * crypto_bignum_init_set(const u8 *buf, size_t len)
{
 mp_int *a;

 if (TEST_FAIL())
  return ((void*)0);

 a = (mp_int *) crypto_bignum_init();
 if (!a)
  return ((void*)0);

 if (mp_read_unsigned_bin(a, buf, len) != MP_OKAY) {
  os_free(a);
  a = ((void*)0);
 }

 return (struct crypto_bignum *) a;
}
