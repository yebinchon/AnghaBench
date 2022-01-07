
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,int *) ;
 scalar_t__ BN_bn2bin_padded (int *,size_t,int const*) ;
 int BN_bn2binpad (int const*,int *,size_t) ;
 int BN_num_bytes (int const*) ;
 scalar_t__ TEST_FAIL () ;
 int os_memset (int *,int ,int) ;

int crypto_bignum_to_bin(const struct crypto_bignum *a,
    u8 *buf, size_t buflen, size_t padlen)
{
 int num_bytes, offset;

 if (TEST_FAIL())
  return -1;

 if (padlen > buflen)
  return -1;

 if (padlen) {
 }

 num_bytes = BN_num_bytes((const BIGNUM *) a);
 if ((size_t) num_bytes > buflen)
  return -1;
 if (padlen > (size_t) num_bytes)
  offset = padlen - num_bytes;
 else
  offset = 0;

 os_memset(buf, 0, offset);
 BN_bn2bin((const BIGNUM *) a, buf + offset);

 return num_bytes + offset;
}
