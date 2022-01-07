
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;
typedef int locale_t ;
typedef int FILE ;


 int FIX_LOCALE (int ) ;
 int fputwc_l (int ,int *,int ) ;

wint_t
putwc_l(wchar_t wc, FILE *fp, locale_t locale)
{
 FIX_LOCALE(locale);
 return (fputwc_l(wc, fp, locale));
}
