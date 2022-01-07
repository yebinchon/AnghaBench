
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
Strcmp(
 register const char *s,
 register const char *t
 )
{
 register int c = 0;

 if (!s || !t || (s == t))
 {
  return 0;
 }

 while (!(c = *s++ - *t++) && *s && *t)
                     ;

 return c;
}
