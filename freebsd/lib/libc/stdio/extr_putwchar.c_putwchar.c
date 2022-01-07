
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;


 int __get_locale () ;
 int putwchar_l (int ,int ) ;

wint_t
putwchar(wchar_t wc)
{
 return putwchar_l(wc, __get_locale());
}
