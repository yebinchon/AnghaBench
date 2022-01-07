
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,int ) ;
 int tolower (char) ;

__attribute__((used)) static int
getdigit(unsigned char **ptr, int base, int max)
{
 int i, val = 0;
 char * q;

 static const char xdigits[] = "0123456789abcdef";

 for (i = 0, q = *ptr; i++ < max; ++q) {
  int sval;
  const char * s = strchr(xdigits, tolower(*q));

  if (s == ((void*)0) || (sval = s - xdigits) >= base)
   break;
  val = (val * base) + sval;
 }
 *ptr = q;
 return val;
}
