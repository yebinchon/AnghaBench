
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int el_line; } ;
typedef int LineInfoW ;
typedef TYPE_1__ EditLine ;



const LineInfoW *
el_wline(EditLine *el)
{

 return (const LineInfoW *)(void *)&el->el_line;
}
