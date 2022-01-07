
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_all_ascii(const char *p)
{
 const unsigned char *pp = (const unsigned char *)p;

 while (*pp) {
  if (*pp++ > 127)
   return (0);
 }
 return (1);
}
