
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;
typedef int __va_list ;


 int FIX_LOCALE (int ) ;
 int FLOCKFILE_CANCELSAFE (int ) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __svfscanf (int ,int ,char const*,int ) ;
 int stdin ;

int
vscanf_l(locale_t locale, const char * __restrict fmt, __va_list ap)
{
 int retval;
 FIX_LOCALE(locale);

 FLOCKFILE_CANCELSAFE(stdin);
 retval = __svfscanf(stdin, locale, fmt, ap);
 FUNLOCKFILE_CANCELSAFE();
 return (retval);
}
