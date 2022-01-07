
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR ;


 int MAXEXPDIG ;
 void* to_char (int) ;

__attribute__((used)) static int
exponent(CHAR *p0, int exp, CHAR fmtch)
{
 CHAR *p, *t;
 CHAR expbuf[MAXEXPDIG];

 p = p0;
 *p++ = fmtch;
 if (exp < 0) {
  exp = -exp;
  *p++ = '-';
 }
 else
  *p++ = '+';
 t = expbuf + MAXEXPDIG;
 if (exp > 9) {
  do {
   *--t = to_char(exp % 10);
  } while ((exp /= 10) > 9);
  *--t = to_char(exp);
  for (; t < expbuf + MAXEXPDIG; *p++ = *t++);
 }
 else {






  if (fmtch == 'e' || fmtch == 'E')
   *p++ = '0';
  *p++ = to_char(exp);
 }
 return (p - p0);
}
