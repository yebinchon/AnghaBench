
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int __get_locale () ;
 int * fgetws_l (int *,int,int *,int ) ;

wchar_t *
fgetws(wchar_t * __restrict ws, int n, FILE * __restrict fp)
{
 return fgetws_l(ws, n, fp, __get_locale());
}
