
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_uint32 ;



__attribute__((used)) static unsigned char equal(signed char b,signed char c)
{
  unsigned char ub = b;
  unsigned char uc = c;
  unsigned char x = ub ^ uc;
  crypto_uint32 y = x;
  y -= 1;
  y >>= 31;
  return y;
}
