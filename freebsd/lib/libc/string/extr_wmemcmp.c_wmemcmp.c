
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



int
wmemcmp(const wchar_t *s1, const wchar_t *s2, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++) {
  if (*s1 != *s2) {

   return *s1 > *s2 ? 1 : -1;
  }
  s1++;
  s2++;
 }
 return 0;
}
