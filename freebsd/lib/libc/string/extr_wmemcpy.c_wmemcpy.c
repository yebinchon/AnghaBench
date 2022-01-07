
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ memcpy (int *,int const*,size_t) ;

wchar_t *
wmemcpy(wchar_t * __restrict d, const wchar_t * __restrict s, size_t n)
{
 return (wchar_t *)memcpy(d, s, n * sizeof(wchar_t));
}
