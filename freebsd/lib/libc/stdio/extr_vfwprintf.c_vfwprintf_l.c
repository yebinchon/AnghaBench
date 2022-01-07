
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int va_list ;
typedef int locale_t ;
struct TYPE_6__ {int _flags; scalar_t__ _file; } ;
typedef TYPE_1__ FILE ;


 int FIX_LOCALE (int ) ;
 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __SNBF ;
 int __SRW ;
 int __SWR ;
 int __sbprintf (TYPE_1__*,int ,int const*,int ) ;
 int __vfwprintf (TYPE_1__*,int ,int const*,int ) ;

int
vfwprintf_l(FILE * __restrict fp, locale_t locale,
  const wchar_t * __restrict fmt0, va_list ap)

{
 int ret;
 FIX_LOCALE(locale);
 FLOCKFILE_CANCELSAFE(fp);

 if ((fp->_flags & (__SNBF|__SWR|__SRW)) == (__SNBF|__SWR) &&
     fp->_file >= 0)
  ret = __sbprintf(fp, locale, fmt0, ap);
 else
  ret = __vfwprintf(fp, locale, fmt0, ap);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
