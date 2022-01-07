
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_bignum {int dummy; } ;
typedef int mp_int ;


 scalar_t__ TEST_FAIL () ;
 int mp_count_bits (int *) ;
 int mp_to_unsigned_bin (int *,int *) ;
 int os_memset (int *,int ,int) ;

int crypto_bignum_to_bin(const struct crypto_bignum *a,
    u8 *buf, size_t buflen, size_t padlen)
{
 int num_bytes, offset;

 if (TEST_FAIL())
  return -1;

 if (padlen > buflen)
  return -1;

 num_bytes = (mp_count_bits((mp_int *) a) + 7) / 8;
 if ((size_t) num_bytes > buflen)
  return -1;
 if (padlen > (size_t) num_bytes)
  offset = padlen - num_bytes;
 else
  offset = 0;

 os_memset(buf, 0, offset);
 mp_to_unsigned_bin((mp_int *) a, buf + offset);

 return num_bytes + offset;
}
