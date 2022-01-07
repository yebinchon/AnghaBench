
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;
typedef int FILE ;


 int __get_locale () ;
 int putwc_l (int ,int *,int ) ;

wint_t
putwc(wchar_t wc, FILE *fp)
{
 return putwc_l(wc, fp, __get_locale());
}
