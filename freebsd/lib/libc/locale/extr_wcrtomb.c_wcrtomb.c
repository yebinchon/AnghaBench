
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int __get_locale () ;
 size_t wcrtomb_l (char*,int ,int *,int ) ;

size_t
wcrtomb(char * __restrict s, wchar_t wc, mbstate_t * __restrict ps)
{
 return wcrtomb_l(s, wc, ps, __get_locale());
}
