
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int FILE ;


 int __get_locale () ;
 int fgetwc_l (int *,int ) ;

wint_t
fgetwc(FILE *fp)
{
 return fgetwc_l(fp, __get_locale());
}
