
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOWER (char) ;

int
isprefix(char *s1, const char *s2)
{
 char *os1;
 char c1, c2;

 if (*s1 == '\0')
  return(-1);
 os1 = s1;
 c1 = *s1;
 c2 = *s2;
 while (LOWER(c1) == LOWER(c2)) {
  if (c1 == '\0')
   break;
  c1 = *++s1;
  c2 = *++s2;
 }
 return(*s1 ? 0 : (*s2 ? (s1 - os1) : (os1 - s1)));
}
