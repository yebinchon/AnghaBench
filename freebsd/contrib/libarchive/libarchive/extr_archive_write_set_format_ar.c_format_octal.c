
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int memmove (char*,char*,int) ;

__attribute__((used)) static int
format_octal(int64_t v, char *p, int s)
{
 int len;
 char *h;

 len = s;
 h = p;


 if (v < 0) {
  while (len-- > 0)
   *p++ = '0';
  return (-1);
 }

 p += s;
 do {
  *--p = (char)('0' + (v & 7));
  v >>= 3;
 } while (--s > 0 && v > 0);

 if (v == 0) {
  memmove(h, p, len - s);
  p = h + len - s;
  while (s-- > 0)
   *p++ = ' ';
  return (0);
 }

 while (len-- > 0)
  *p++ = '7';

 return (-1);
}
