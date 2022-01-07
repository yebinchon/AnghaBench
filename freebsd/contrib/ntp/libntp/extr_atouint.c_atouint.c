
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int isdigit (unsigned char) ;

int
atouint(
 const char *str,
 u_long *uval
 )
{
 u_long u;
 const char *cp;

 cp = str;
 if ('\0' == *cp)
  return 0;

 u = 0;
 while ('\0' != *cp) {
  if (!isdigit((unsigned char)*cp))
   return 0;
  if (u > 429496729 || (u == 429496729 && *cp >= '6'))
   return 0;

  u = (u << 3) + (u << 1);
  u += *cp++ - '0';
 }

 *uval = u;
 return 1;
}
