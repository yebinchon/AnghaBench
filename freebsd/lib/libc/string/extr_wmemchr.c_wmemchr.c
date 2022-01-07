
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const wchar_t ;



wchar_t *
wmemchr(const wchar_t *s, wchar_t c, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++) {
  if (*s == c) {

   return (wchar_t *)s;
  }
  s++;
 }
 return ((void*)0);
}
