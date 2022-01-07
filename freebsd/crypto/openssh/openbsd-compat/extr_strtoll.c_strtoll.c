
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 long long LLONG_MAX ;
 long long LLONG_MIN ;
 int errno ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ isspace (int) ;
 scalar_t__ isupper (int) ;

long long
strtoll(const char *nptr, char **endptr, int base)
{
 const char *s;
 long long acc, cutoff;
 int c;
 int neg, any, cutlim;






 s = nptr;
 do {
  c = (unsigned char) *s++;
 } while (isspace(c));
 if (c == '-') {
  neg = 1;
  c = *s++;
 } else {
  neg = 0;
  if (c == '+')
   c = *s++;
 }
 if ((base == 0 || base == 16) &&
     c == '0' && (*s == 'x' || *s == 'X')) {
  c = s[1];
  s += 2;
  base = 16;
 }
 if (base == 0)
  base = c == '0' ? 8 : 10;
 cutoff = neg ? LLONG_MIN : LLONG_MAX;
 cutlim = cutoff % base;
 cutoff /= base;
 if (neg) {
  if (cutlim > 0) {
   cutlim -= base;
   cutoff += 1;
  }
  cutlim = -cutlim;
 }
 for (acc = 0, any = 0;; c = (unsigned char) *s++) {
  if (isdigit(c))
   c -= '0';
  else if (isalpha(c))
   c -= isupper(c) ? 'A' - 10 : 'a' - 10;
  else
   break;
  if (c >= base)
   break;
  if (any < 0)
   continue;
  if (neg) {
   if (acc < cutoff || (acc == cutoff && c > cutlim)) {
    any = -1;
    acc = LLONG_MIN;
    errno = ERANGE;
   } else {
    any = 1;
    acc *= base;
    acc -= c;
   }
  } else {
   if (acc > cutoff || (acc == cutoff && c > cutlim)) {
    any = -1;
    acc = LLONG_MAX;
    errno = ERANGE;
   } else {
    any = 1;
    acc *= base;
    acc += c;
   }
  }
 }
 if (endptr != 0)
  *endptr = (char *) (any ? s - 1 : nptr);
 return (acc);
}
