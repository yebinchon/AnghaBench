
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int INT64_MAX ;
 int INT64_MIN ;
 int parsedigit (char) ;

__attribute__((used)) static int64_t
mtree_atol(char **p, int base)
{
 int64_t l, limit;
 int digit, last_digit_limit;

 if (base == 0) {
  if (**p != '0')
   base = 10;
  else if ((*p)[1] == 'x' || (*p)[1] == 'X') {
   *p += 2;
   base = 16;
  } else {
   base = 8;
  }
 }

 if (**p == '-') {
  limit = INT64_MIN / base;
  last_digit_limit = INT64_MIN % base;
  ++(*p);

  l = 0;
  digit = parsedigit(**p);
  while (digit >= 0 && digit < base) {
   if (l < limit || (l == limit && digit > last_digit_limit))
    return INT64_MIN;
   l = (l * base) - digit;
   digit = parsedigit(*++(*p));
  }
  return l;
 } else {
  limit = INT64_MAX / base;
  last_digit_limit = INT64_MAX % base;

  l = 0;
  digit = parsedigit(**p);
  while (digit >= 0 && digit < base) {
   if (l > limit || (l == limit && digit > last_digit_limit))
    return INT64_MAX;
   l = (l * base) + digit;
   digit = parsedigit(*++(*p));
  }
  return l;
 }
}
