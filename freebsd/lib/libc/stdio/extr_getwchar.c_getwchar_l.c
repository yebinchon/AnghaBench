
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int locale_t ;


 int fgetwc_l (int ,int ) ;
 int stdin ;

wint_t
getwchar_l(locale_t locale)
{
 return (fgetwc_l(stdin, locale));
}
