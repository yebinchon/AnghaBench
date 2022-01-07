
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static wchar_t * wcscpy(wchar_t *s1, const wchar_t *s2)
{
 wchar_t *dest = s1;
 while ((*s1 = *s2) != L'\0')
  ++s1, ++s2;
 return dest;
}
