
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int
http_decode(char *p)
{
 char hex[3];
 char *q;
 int c;

 hex[2] = '\0';

 q = p;
 for ( ; '\0' != *p; p++, q++) {
  if ('%' == *p) {
   if ('\0' == (hex[0] = *(p + 1)))
    return 0;
   if ('\0' == (hex[1] = *(p + 2)))
    return 0;
   if (1 != sscanf(hex, "%x", &c))
    return 0;
   if ('\0' == c)
    return 0;

   *q = (char)c;
   p += 2;
  } else
   *q = '+' == *p ? ' ' : *p;
 }

 *q = '\0';
 return 1;
}
