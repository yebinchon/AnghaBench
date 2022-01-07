
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXEXPDIG ;
 void* to_char (int) ;

__attribute__((used)) static int
exponent(char *p0, int expo, int fmtch)
{
 char *p, *t;
 char expbuf[MAXEXPDIG];

 p = p0;
 *p++ = fmtch;
 if (expo < 0) {
  expo = -expo;
  *p++ = '-';
 }
 else
  *p++ = '+';
 t = expbuf + MAXEXPDIG;
 if (expo > 9) {
  do {
   *--t = to_char(expo % 10);
  } while ((expo /= 10) > 9);
  *--t = to_char(expo);
  for (; t < expbuf + MAXEXPDIG; *p++ = *t++)
   ;
 }
 else {






  if (fmtch == 'e' || fmtch == 'E')
   *p++ = '0';
  *p++ = to_char(expo);
 }
 return (p - p0);
}
