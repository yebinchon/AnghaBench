
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static size_t wcslen(const wchar_t *s)
{
 const wchar_t *p = s;
 while (*p != L'\0')
  ++p;
 return p - s;
}
