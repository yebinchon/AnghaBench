
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const wchar_t ;



wchar_t *
wcsrchr(const wchar_t *s, wchar_t c)
{
 const wchar_t *last;

 last = ((void*)0);
 for (;;) {
  if (*s == c)
   last = s;
  if (*s == L'\0')
   break;
  s++;
 }

 return ((wchar_t *)last);
}
