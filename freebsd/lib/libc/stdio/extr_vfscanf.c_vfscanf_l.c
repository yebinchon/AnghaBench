
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int locale_t ;
typedef int FILE ;


 int FIX_LOCALE (int ) ;
 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __svfscanf (int *,int ,char const*,int ) ;

int
vfscanf_l(FILE *fp, locale_t locale, char const *fmt0, va_list ap)
{
 int ret;
 FIX_LOCALE(locale);

 FLOCKFILE_CANCELSAFE(fp);
 ret = __svfscanf(fp, locale, fmt0, ap);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
