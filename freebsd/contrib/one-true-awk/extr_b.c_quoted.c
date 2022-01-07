
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uschar ;


 int hexstr (int**) ;
 scalar_t__ isoctdigit (int) ;

int quoted(uschar **pp)

{
 uschar *p = *pp;
 int c;

 if ((c = *p++) == 't')
  c = '\t';
 else if (c == 'n')
  c = '\n';
 else if (c == 'f')
  c = '\f';
 else if (c == 'r')
  c = '\r';
 else if (c == 'b')
  c = '\b';
 else if (c == '\\')
  c = '\\';
 else if (c == 'x') {
  c = hexstr(&p);
 } else if (isoctdigit(c)) {
  int n = c - '0';
  if (isoctdigit(*p)) {
   n = 8 * n + *p++ - '0';
   if (isoctdigit(*p))
    n = 8 * n + *p++ - '0';
  }
  c = n;
 }

 *pp = p;
 return c;
}
