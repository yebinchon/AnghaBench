
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 scalar_t__ EQ (char const*,char const*) ;
 char const TRIM ;

int
spdist(const Char *s, const Char *t)
{
    for (; (*s & TRIM) == (*t & TRIM); t++, s++)
 if (*t == '\0')
     return 0;
    if (*s) {
 if (*t) {
     if (s[1] && t[1] && (*s & TRIM) == (t[1] & TRIM) &&
  (*t & TRIM) == (s[1] & TRIM) && EQ(s + 2, t + 2))
  return 1;
     if (EQ(s + 1, t + 1))
  return 3;
 }
 if (EQ(s + 1, t))
     return 2;
    }
    if (*t && EQ(s, t + 1))
 return 1;
    return 4;
}
