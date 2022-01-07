
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int isdigit (unsigned char) ;

int
octtoint(
 const char *str,
 u_long *ival
 )
{
 register u_long u;
 register const char *cp;

 cp = str;

 if (*cp == '\0')
     return 0;

 u = 0;
 while (*cp != '\0') {
  if (!isdigit((unsigned char)*cp) || *cp == '8' || *cp == '9')
      return 0;
  if (u >= 0x20000000)
      return 0;
  u <<= 3;
  u += *cp++ - '0';
 }
 *ival = u;
 return 1;
}
