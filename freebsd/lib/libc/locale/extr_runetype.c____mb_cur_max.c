
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int __mb_cur_max; } ;


 TYPE_1__* XLOCALE_CTYPE (int ) ;
 int __get_locale () ;

int ___mb_cur_max(void)
{
 return XLOCALE_CTYPE(__get_locale())->__mb_cur_max;
}
