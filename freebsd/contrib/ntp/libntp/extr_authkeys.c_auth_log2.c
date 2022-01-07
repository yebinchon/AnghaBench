
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int CHAR_BIT ;

__attribute__((used)) static u_short
auth_log2(size_t x)
{
 int s;
 int r = 0;
 size_t m = ~(size_t)0;

 for (s = sizeof(size_t) / 2 * CHAR_BIT; s != 0; s >>= 1) {
  m <<= s;
  if (x & m)
   r += s;
  else
   x <<= s;
 }
 return (u_short)r;
}
