
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int
format_octal(int64_t v, char *p, int s)
{
 int len = s;


 if (v < 0)
  v = 0;

 p += s;
 while (s-- > 0) {
  *--p = (char)('0' + (v & 7));
  v >>= 3;
 }

 if (v == 0)
  return (0);


 while (len-- > 0)
  *p++ = '7';

 return (-1);
}
