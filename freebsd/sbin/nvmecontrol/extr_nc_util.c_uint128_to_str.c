
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint128_t ;



char *
uint128_to_str(uint128_t u, char *buf, size_t buflen)
{
 char *end = buf + buflen - 1;

 *end-- = '\0';
 if (u == 0)
  *end-- = '0';
 while (u && end >= buf) {
  *end-- = u % 10 + '0';
  u /= 10;
 }
 end++;
 if (u != 0)
  return ((void*)0);

 return end;
}
