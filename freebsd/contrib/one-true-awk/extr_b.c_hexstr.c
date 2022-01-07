
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uschar ;


 scalar_t__ isdigit (int) ;
 scalar_t__ isxdigit (int) ;

int hexstr(uschar **pp)
{
 uschar *p;
 int n = 0;
 int i;

 for (i = 0, p = (uschar *) *pp; i < 2 && isxdigit(*p); i++, p++) {
  if (isdigit(*p))
   n = 16 * n + *p - '0';
  else if (*p >= 'a' && *p <= 'f')
   n = 16 * n + *p - 'a' + 10;
  else if (*p >= 'A' && *p <= 'F')
   n = 16 * n + *p - 'A' + 10;
 }
 *pp = (uschar *) p;
 return n;
}
