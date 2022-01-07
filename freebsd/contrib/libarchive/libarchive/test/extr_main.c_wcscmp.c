
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



__attribute__((used)) static int
wcscmp(const wchar_t *s1, const wchar_t *s2)
{

 while (*s1 == *s2++) {
  if (*s1++ == L'\0')
   return 0;
 }
 if (*s1 > *--s2)
  return 1;
 else
  return -1;
}
