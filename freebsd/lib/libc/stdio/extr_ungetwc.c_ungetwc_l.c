
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int locale_t ;
typedef int FILE ;


 int FIX_LOCALE (int ) ;
 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (int *,int) ;
 int __ungetwc (int ,int *,int ) ;

wint_t
ungetwc_l(wint_t wc, FILE *fp, locale_t locale)
{
 wint_t r;
 FIX_LOCALE(locale);

 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, 1);
 r = __ungetwc(wc, fp, locale);
 FUNLOCKFILE_CANCELSAFE();

 return (r);
}
