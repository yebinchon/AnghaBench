
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int intmax_t ;


 char const CHAR_MAX ;
 int INTMAX_MAX ;
 int abort () ;
 char to_char (int) ;

__attribute__((used)) static char *
__ujtoa(uintmax_t val, char *endp, int base, const char *xdigs,
 int needgrp, char thousep, const char *grp)
{
 char *cp = endp;
 intmax_t sval;
 int ndig;

 switch (base) {
 case 10:
  if (val < 10) {
   *--cp = to_char(val % 10);
   return (cp);
  }
  ndig = 0;
  if (val > INTMAX_MAX) {
   *--cp = to_char(val % 10);
   ndig++;
   sval = val / 10;
  } else
   sval = val;
  do {
   *--cp = to_char(sval % 10);
   ndig++;




   if (needgrp && *grp != CHAR_MAX && ndig == *grp
     && sval > 9) {
    *--cp = thousep;
    ndig = 0;





    if (*(grp+1) != '\0')
     grp++;
   }
   sval /= 10;
  } while (sval != 0);
  break;

 case 8:
  do {
   *--cp = to_char(val & 7);
   val >>= 3;
  } while (val);
  break;

 case 16:
  do {
   *--cp = xdigs[val & 15];
   val >>= 4;
  } while (val);
  break;

 default:
  abort();
 }
 return (cp);
}
