
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * malloc (size_t) ;
 int wcslen (int const*) ;
 int * wmemcpy (int *,int const*,size_t) ;

wchar_t *
wcsdup(const wchar_t *s)
{
 wchar_t *copy;
 size_t len;

 len = wcslen(s) + 1;
 if ((copy = malloc(len * sizeof(wchar_t))) == ((void*)0))
  return (((void*)0));
 return (wmemcpy(copy, s, len));
}
