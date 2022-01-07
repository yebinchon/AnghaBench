
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



wchar_t *
wcscat(wchar_t * __restrict s1, const wchar_t * __restrict s2)
{
 wchar_t *cp;

 cp = s1;
 while (*cp != L'\0')
  cp++;
 while ((*cp++ = *s2++) != L'\0')
  ;

 return (s1);
}
