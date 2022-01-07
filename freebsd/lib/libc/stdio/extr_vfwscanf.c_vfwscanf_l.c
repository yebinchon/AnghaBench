
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;
typedef int locale_t ;
typedef int FILE ;


 int FIX_LOCALE (int ) ;
 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (int *,int) ;
 int __vfwscanf (int *,int ,int const*,int ) ;

int
vfwscanf_l(FILE * __restrict fp, locale_t locale,
  const wchar_t * __restrict fmt, va_list ap)
{
 int ret;
 FIX_LOCALE(locale);

 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, 1);
 ret = __vfwscanf(fp, locale, fmt, ap);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
