
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int __get_locale () ;
 int * fgetwln_l (int *,size_t*,int ) ;

wchar_t *
fgetwln(FILE * __restrict fp, size_t *lenp)
{
 return fgetwln_l(fp, lenp, __get_locale());
}
