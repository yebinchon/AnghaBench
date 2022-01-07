
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int crypto_uint32 ;



__attribute__((used)) static crypto_uint32 ge(crypto_uint32 a,crypto_uint32 b)
{
  unsigned int x = a;
  x -= (unsigned int) b;
  x >>= 31;
  x ^= 1;
  return x;
}
