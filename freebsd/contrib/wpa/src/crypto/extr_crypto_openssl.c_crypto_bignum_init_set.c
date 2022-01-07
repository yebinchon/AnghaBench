
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_bignum {int dummy; } ;
typedef int BIGNUM ;


 int * BN_bin2bn (int const*,size_t,int *) ;
 scalar_t__ TEST_FAIL () ;

struct crypto_bignum * crypto_bignum_init_set(const u8 *buf, size_t len)
{
 BIGNUM *bn;

 if (TEST_FAIL())
  return ((void*)0);

 bn = BN_bin2bn(buf, len, ((void*)0));
 return (struct crypto_bignum *) bn;
}
