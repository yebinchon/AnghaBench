
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int LLONG_MAX ;
 long long LLONG_MIN ;
 int MAX_DIGITS ;
 unsigned int SCALE_LENGTH ;
 int errno ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 char* scale_chars ;
 long long* scale_factors ;
 char tolower (unsigned char) ;

int
scan_scaled(char *scaled, long long *result)
{
 char *p = scaled;
 int sign = 0;
 unsigned int i, ndigits = 0, fract_digits = 0;
 long long scale_fact = 1, whole = 0, fpart = 0;


 while (isascii((unsigned char)*p) && isspace((unsigned char)*p))
  ++p;


 while (*p == '-' || *p == '+') {
  if (*p == '-') {
   if (sign) {
    errno = EINVAL;
    return -1;
   }
   sign = -1;
   ++p;
  } else if (*p == '+') {
   if (sign) {
    errno = EINVAL;
    return -1;
   }
   sign = +1;
   ++p;
  }
 }






 for (; isascii((unsigned char)*p) &&
     (isdigit((unsigned char)*p) || *p=='.'); ++p) {
  if (*p == '.') {
   if (fract_digits > 0) {
    errno = EINVAL;
    return -1;
   }
   fract_digits = 1;
   continue;
  }

  i = (*p) - '0';
  if (fract_digits > 0) {
   if (fract_digits >= MAX_DIGITS-1)

    continue;
   fract_digits++;
   if (fpart > LLONG_MAX / 10) {
    errno = ERANGE;
    return -1;
   }
   fpart *= 10;
   if (i > LLONG_MAX - fpart) {
    errno = ERANGE;
    return -1;
   }
   fpart += i;
  } else {
   if (++ndigits >= MAX_DIGITS) {
    errno = ERANGE;
    return -1;
   }
   if (whole > LLONG_MAX / 10) {
    errno = ERANGE;
    return -1;
   }
   whole *= 10;
   if (i > LLONG_MAX - whole) {
    errno = ERANGE;
    return -1;
   }
   whole += i;
  }
 }

 if (sign) {
  whole *= sign;
  fpart *= sign;
 }


 if (!*p) {
  *result = whole;
  return 0;
 }


 for (i = 0; i < SCALE_LENGTH; i++) {


  if (*p == scale_chars[i] ||
   *p == tolower((unsigned char)scale_chars[i])) {


   if (isalnum((unsigned char)*(p+1))) {
    errno = EINVAL;
    return -1;
   }
   scale_fact = scale_factors[i];


   if (whole > LLONG_MAX / scale_fact ||
       whole < LLONG_MIN / scale_fact) {
    errno = ERANGE;
    return -1;
   }


   whole *= scale_fact;




   while (fpart >= LLONG_MAX / scale_fact) {
    fpart /= 10;
    fract_digits--;
   }
   fpart *= scale_fact;
   if (fract_digits > 0) {
    for (i = 0; i < fract_digits -1; i++)
     fpart /= 10;
   }
   whole += fpart;
   *result = whole;
   return 0;
  }
 }


 errno = EINVAL;
 return -1;
}
