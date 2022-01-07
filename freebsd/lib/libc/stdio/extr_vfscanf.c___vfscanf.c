
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __get_locale () ;
 int __svfscanf (int *,int ,char const*,int ) ;

int
__vfscanf(FILE *fp, char const *fmt0, va_list ap)
{
 int ret;

 FLOCKFILE_CANCELSAFE(fp);
 ret = __svfscanf(fp, __get_locale(), fmt0, ap);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
