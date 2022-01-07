
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int INT64_MAX ;
 int INT64_MIN ;

__attribute__((used)) static int64_t
tar_atol_base_n(const char *p, size_t char_cnt, int base)
{
 int64_t l, maxval, limit, last_digit_limit;
 int digit, sign;

 maxval = INT64_MAX;
 limit = INT64_MAX / base;
 last_digit_limit = INT64_MAX % base;




 while (char_cnt != 0 && (*p == ' ' || *p == '\t')) {
  p++;
  char_cnt--;
 }

 sign = 1;
 if (char_cnt != 0 && *p == '-') {
  sign = -1;
  p++;
  char_cnt--;

  maxval = INT64_MIN;
  limit = -(INT64_MIN / base);
  last_digit_limit = INT64_MIN % base;
 }

 l = 0;
 if (char_cnt != 0) {
  digit = *p - '0';
  while (digit >= 0 && digit < base && char_cnt != 0) {
   if (l>limit || (l == limit && digit > last_digit_limit)) {
    return maxval;
   }
   l = (l * base) + digit;
   digit = *++p - '0';
   char_cnt--;
  }
 }
 return (sign < 0) ? -l : l;
}
