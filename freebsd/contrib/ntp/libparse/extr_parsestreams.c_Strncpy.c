
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
Strncpy(
 register char *t,
 register char *s,
 register int c
 )
{
 if (s && t)
 {
  while ((c-- > 0) && (*t++ = *s++))
      ;
 }
}
