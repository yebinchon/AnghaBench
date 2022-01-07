
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xo_style_t ;
struct TYPE_5__ {int xo_style; } ;
typedef TYPE_1__ xo_handle_t ;


 TYPE_1__* xo_default (TYPE_1__*) ;

void
xo_set_style (xo_handle_t *xop, xo_style_t style)
{
    xop = xo_default(xop);
    xop->xo_style = style;
}
