
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 int wcwidth_l (int,int ) ;

int
wcswidth_l(const wchar_t *pwcs, size_t n, locale_t locale)
{
 wchar_t wc;
 int len, l;
 FIX_LOCALE(locale);

 len = 0;
 while (n-- > 0 && (wc = *pwcs++) != L'\0') {
  if ((l = wcwidth_l(wc, locale)) < 0)
   return (-1);
  len += l;
 }
 return (len);
}
