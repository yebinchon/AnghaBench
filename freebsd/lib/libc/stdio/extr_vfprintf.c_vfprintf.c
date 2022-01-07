
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int __get_locale () ;
 int vfprintf_l (int *,int ,char const*,int ) ;

int
vfprintf(FILE * __restrict fp, const char * __restrict fmt0, va_list ap)
{
 return vfprintf_l(fp, __get_locale(), fmt0, ap);
}
