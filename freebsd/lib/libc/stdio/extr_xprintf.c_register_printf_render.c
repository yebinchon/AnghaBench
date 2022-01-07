
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int printf_render ;
typedef int printf_arginfo_function ;
struct TYPE_2__ {int * arginfo; int * render; } ;


 int __use_xprintf ;
 TYPE_1__* printf_tbl ;

int
register_printf_render(int spec, printf_render *render, printf_arginfo_function *arginfo)
{

 if (spec > 255 || spec < 0)
  return (-1);
 printf_tbl[spec].render = render;
 printf_tbl[spec].arginfo = arginfo;
 __use_xprintf = 1;
 return (0);
}
