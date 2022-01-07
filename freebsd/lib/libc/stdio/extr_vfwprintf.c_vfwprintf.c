
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;
typedef int FILE ;


 int __get_locale () ;
 int vfwprintf_l (int *,int ,int const*,int ) ;

int
vfwprintf(FILE * __restrict fp, const wchar_t * __restrict fmt0, va_list ap)
{
 return vfwprintf_l(fp, __get_locale(), fmt0, ap);
}
