
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_hex(const char *p, size_t len)
{
 while (len-- > 0) {
  if ((*p >= '0' && *p <= '9')
      || (*p >= 'a' && *p <= 'f')
      || (*p >= 'A' && *p <= 'F'))
   ++p;
  else
   return (0);
 }
 return (1);
}
