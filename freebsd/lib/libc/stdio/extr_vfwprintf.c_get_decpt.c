
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {int decimal_point; } ;


 int MB_CUR_MAX ;
 int initial_mbs ;
 TYPE_1__* localeconv_l (int ) ;
 int mbrtowc (char*,int ,int ,int *) ;

__attribute__((used)) static inline wchar_t
get_decpt(locale_t locale)
{
 mbstate_t mbs;
 wchar_t decpt;
 int nconv;

 mbs = initial_mbs;
 nconv = mbrtowc(&decpt, localeconv_l(locale)->decimal_point, MB_CUR_MAX, &mbs);
 if (nconv == (size_t)-1 || nconv == (size_t)-2)
  decpt = '.';
 return (decpt);
}
