
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 scalar_t__ isdigit (unsigned char) ;
 unsigned int* poweroften ;

__attribute__((used)) static u_int8_t
precsize_aton(const char **strptr) {
 unsigned int mval = 0, cmval = 0;
 u_int8_t retval = 0;
 const char *cp;
 int exponent;
 int mantissa;

 cp = *strptr;

 while (isdigit((unsigned char)*cp))
  mval = mval * 10 + (*cp++ - '0');

 if (*cp == '.') {
  cp++;
  if (isdigit((unsigned char)*cp)) {
   cmval = (*cp++ - '0') * 10;
   if (isdigit((unsigned char)*cp)) {
    cmval += (*cp++ - '0');
   }
  }
 }
 cmval = (mval * 100) + cmval;

 for (exponent = 0; exponent < 9; exponent++)
  if (cmval < poweroften[exponent+1])
   break;

 mantissa = cmval / poweroften[exponent];
 if (mantissa > 9)
  mantissa = 9;

 retval = (mantissa << 4) | exponent;

 *strptr = cp;

 return (retval);
}
