
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;


 unsigned int UINT64_MAX ;

__attribute__((used)) static uint64_t
ar_atol10(const char *p, unsigned char_cnt)
{
 uint64_t l, limit, last_digit_limit;
 unsigned int base, digit;

 base = 10;
 limit = UINT64_MAX / base;
 last_digit_limit = UINT64_MAX % base;

 while ((*p == ' ' || *p == '\t') && char_cnt-- > 0)
  p++;
 l = 0;
 digit = *p - '0';
 while (*p >= '0' && digit < base && char_cnt-- > 0) {
  if (l > limit || (l == limit && digit > last_digit_limit)) {
   l = UINT64_MAX;
   break;
  }
  l = (l * base) + digit;
  digit = *++p - '0';
 }
 return (l);
}
