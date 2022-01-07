
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_uint32 ;



__attribute__((used)) static crypto_uint32 equal(crypto_uint32 a,crypto_uint32 b)
{
  crypto_uint32 x = a ^ b;
  x -= 1;
  x >>= 31;
  return x;
}
