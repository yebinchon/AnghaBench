
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint64_t ;


 char* digits ;
 scalar_t__ isascii (char) ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;
 char tolower (char) ;

isc_uint64_t
isc_string_touint64(char *source, char **end, int base) {
 isc_uint64_t tmp;
 isc_uint64_t overflow;
 char *s = source;
 char *o;
 char c;

 if ((base < 0) || (base == 1) || (base > 36)) {
  *end = source;
  return (0);
 }

 while (*s != 0 && isascii(*s&0xff) && isspace(*s&0xff))
  s++;
 if (*s == '+' )
  s++;
 if (base == 0) {
  if (*s == '0' && (*(s+1) == 'X' || *(s+1) == 'x')) {
   s += 2;
   base = 16;
  } else if (*s == '0')
   base = 8;
  else
   base = 10;
 }
 if (*s == 0) {
  *end = source;
  return (0);
 }
 overflow = ~0;
 overflow /= base;
 tmp = 0;

 while ((c = *s) != 0) {
  c = tolower(c&0xff);

  if ((o = strchr(digits, c)) == ((void*)0)) {
   *end = s;
   return (tmp);
  }

  if ((o - digits) >= base) {
   *end = s;
   return (tmp);
  }

  if (tmp > overflow) {
   *end = source;
   return (0);
  }
  tmp *= base;

  if ((tmp + (o - digits)) < tmp) {
   *end = source;
   return (0);
  }
  tmp += o - digits;
  s++;
 }
 *end = s;
 return (tmp);
}
