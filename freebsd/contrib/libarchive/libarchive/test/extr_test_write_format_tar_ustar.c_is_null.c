
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_null(const char *p, size_t l)
{
 while (l > 0) {
  if (*p != '\0')
   return (0);
  --l;
  ++p;
 }
 return (1);
}
