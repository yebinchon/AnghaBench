
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int64_t
atol8(const char *p, unsigned char_cnt)
{
 int64_t l;
 int digit;

 l = 0;
 while (char_cnt-- > 0) {
  if (*p >= '0' && *p <= '7')
   digit = *p - '0';
  else
   return (l);
  p++;
  l <<= 3;
  l |= digit;
 }
 return (l);
}
