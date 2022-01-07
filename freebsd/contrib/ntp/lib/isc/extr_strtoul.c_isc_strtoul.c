
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DE_CONST (char const*,char*) ;
 int ERANGE ;
 unsigned long ULONG_MAX ;
 int errno ;
 scalar_t__ isalpha (unsigned char) ;
 int isascii (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;

unsigned long
isc_strtoul(const char *nptr, char **endptr, int base) {
 const char *s = nptr;
 unsigned long acc;
 unsigned char c;
 unsigned long cutoff;
 int neg = 0, any, cutlim;




 do {
  c = *s++;
 } while (isspace(c));
 if (c == '-') {
  neg = 1;
  c = *s++;
 } else if (c == '+')
  c = *s++;
 if ((base == 0 || base == 16) &&
     c == '0' && (*s == 'x' || *s == 'X')) {
  c = s[1];
  s += 2;
  base = 16;
 }
 if (base == 0)
  base = c == '0' ? 8 : 10;
 cutoff = (unsigned long)ULONG_MAX / (unsigned long)base;
 cutlim = (unsigned long)ULONG_MAX % (unsigned long)base;
 for (acc = 0, any = 0;; c = *s++) {
  if (!isascii(c))
   break;
  if (isdigit(c))
   c -= '0';
  else if (isalpha(c))
   c -= isupper(c) ? 'A' - 10 : 'a' - 10;
  else
   break;
  if (c >= base)
   break;
  if (any < 0 || acc > cutoff || (acc == cutoff && c > cutlim))
   any = -1;
  else {
   any = 1;
   acc *= base;
   acc += c;
  }
 }
 if (any < 0) {
  acc = ULONG_MAX;
  errno = ERANGE;
 } else if (neg)
  acc = -acc;
 if (endptr != 0)
  DE_CONST(any ? s - 1 : nptr, *endptr);
 return (acc);
}
