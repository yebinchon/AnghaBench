
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



size_t
wcslen(const wchar_t *s)
{
 const wchar_t *p;

 p = s;
 while (*p)
  p++;

 return p - s;
}
