
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int format_256 (int,char*,int) ;
 int format_octal (int,char*,int) ;

__attribute__((used)) static int
format_number(int64_t v, char *p, int s, int maxsize, int strict)
{
 int64_t limit;

 limit = ((int64_t)1 << (s*3));


 if (strict)
  return (format_octal(v, p, s));







 if (v >= 0) {
  while (s <= maxsize) {
   if (v < limit)
    return (format_octal(v, p, s));
   s++;
   limit <<= 3;
  }
 }


 return (format_256(v, p, maxsize));
}
