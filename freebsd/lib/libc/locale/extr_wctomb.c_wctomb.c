
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 int wctomb_l (char*,int ,int ) ;

int
wctomb(char *s, wchar_t wchar)
{
 return wctomb_l(s, wchar, __get_locale());
}
