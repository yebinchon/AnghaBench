
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;
typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 int fputwc_l (int ,int ,int ) ;
 int stdout ;

wint_t
putwchar_l(wchar_t wc, locale_t locale)
{
 FIX_LOCALE(locale);
 return (fputwc_l(wc, stdout, locale));
}
