
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int locale_t ;


 int __wcwidth_l (int ,int ) ;

int
wcwidth_l(wchar_t wc, locale_t locale)
{
 return (__wcwidth_l(wc, locale));
}
