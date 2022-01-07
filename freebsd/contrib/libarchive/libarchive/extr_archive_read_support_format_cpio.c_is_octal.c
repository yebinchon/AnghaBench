
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_octal(const char *p, size_t len)
{
 while (len-- > 0) {
  if (*p < '0' || *p > '7')
   return (0);
         ++p;
 }
 return (1);
}
