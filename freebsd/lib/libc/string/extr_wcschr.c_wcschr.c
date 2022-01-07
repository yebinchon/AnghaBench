
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const wchar_t ;



wchar_t *
wcschr(const wchar_t *s, wchar_t c)
{

 while (*s != c && *s != L'\0')
  s++;
 if (*s == c)
  return ((wchar_t *)s);
 return (((void*)0));
}
