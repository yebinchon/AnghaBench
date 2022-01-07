
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int _RuneLocale ;
struct TYPE_2__ {int const* runes; } ;


 TYPE_1__* XLOCALE_CTYPE (int ) ;
 int __get_locale () ;

const _RuneLocale *
__getCurrentRuneLocale(void)
{

 return (XLOCALE_CTYPE(__get_locale())->runes);
}
