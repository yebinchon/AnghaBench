
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
Strlen(
 register const char *s
 )
{
 register int c;

 c = 0;
 if (s)
 {
  while (*s++)
  {
   c++;
  }
 }
 return c;
}
