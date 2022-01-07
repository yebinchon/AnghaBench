
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
Strncmp(
 register char *s,
 register char *t,
 register int n
 )
{
 register int c = 0;

 if (!s || !t || (s == t))
 {
  return 0;
 }

 while (n-- && !(c = *s++ - *t++) && *s && *t)
                     ;

 return c;
}
