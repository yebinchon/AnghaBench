
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ memmove (int *,int const*,size_t) ;

wchar_t *
wmemmove(wchar_t *d, const wchar_t *s, size_t n)
{
 return (wchar_t *)memmove(d, s, n * sizeof(wchar_t));
}
