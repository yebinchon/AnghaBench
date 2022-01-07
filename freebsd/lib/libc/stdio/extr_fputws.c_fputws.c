
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int __get_locale () ;
 int fputws_l (int const*,int *,int ) ;

int
fputws(const wchar_t * __restrict ws, FILE * __restrict fp)
{
 return fputws_l(ws, fp, __get_locale());
}
