
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



wchar_t *
wmemset(wchar_t *s, wchar_t c, size_t n)
{
 size_t i;
 wchar_t *p;

 p = (wchar_t *)s;
 for (i = 0; i < n; i++) {
  *p = c;
  p++;
 }
 return s;
}
