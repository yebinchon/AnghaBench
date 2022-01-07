
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {int thousands_sep; } ;


 int MB_CUR_MAX ;
 int initial_mbs ;
 TYPE_1__* localeconv_l (int ) ;
 int mbrtowc (char*,int ,int ,int *) ;

__attribute__((used)) static inline wchar_t
get_thousep(locale_t locale)
{
 mbstate_t mbs;
 wchar_t thousep;
 int nconv;

 mbs = initial_mbs;
 nconv = mbrtowc(&thousep, localeconv_l(locale)->thousands_sep,
     MB_CUR_MAX, &mbs);
 if (nconv == (size_t)-1 || nconv == (size_t)-2)
  thousep = '\0';
 return (thousep);
}
