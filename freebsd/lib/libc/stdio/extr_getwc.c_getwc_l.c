
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int locale_t ;
typedef int FILE ;


 int fgetwc_l (int *,int ) ;

wint_t
getwc_l(FILE *fp, locale_t locale)
{

 return (fgetwc_l(fp, locale));
}
