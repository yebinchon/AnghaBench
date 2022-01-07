
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__ towlower (scalar_t__ const) ;

int
wcscasecmp(const wchar_t *s1, const wchar_t *s2)
{
 wchar_t c1, c2;

 for (; *s1; s1++, s2++) {
  c1 = towlower(*s1);
  c2 = towlower(*s2);
  if (c1 != c2)
   return ((int)c1 - c2);
 }
 return (-*s2);
}
