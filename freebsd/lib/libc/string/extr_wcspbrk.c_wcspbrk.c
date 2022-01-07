
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



wchar_t *
wcspbrk(const wchar_t *s, const wchar_t *set)
{
 const wchar_t *p;
 const wchar_t *q;

 p = s;
 while (*p) {
  q = set;
  while (*q) {
   if (*p == *q) {

    return (wchar_t *)p;
   }
   q++;
  }
  p++;
 }
 return ((void*)0);
}
