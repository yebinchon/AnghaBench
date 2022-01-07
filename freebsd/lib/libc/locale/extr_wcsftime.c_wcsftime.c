
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct tm {int dummy; } ;


 int __get_locale () ;
 size_t wcsftime_l (int *,size_t,int const*,struct tm const*,int ) ;

size_t
wcsftime(wchar_t * __restrict wcs, size_t maxsize,
 const wchar_t * __restrict format, const struct tm * __restrict timeptr)
{
 return wcsftime_l(wcs, maxsize, format, timeptr, __get_locale());
}
