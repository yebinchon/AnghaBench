
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xo_encoder; int xo_style; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int xo_encoder_func_t ;


 int XO_STYLE_ENCODER ;
 TYPE_1__* xo_default (TYPE_1__*) ;

void
xo_set_encoder (xo_handle_t *xop, xo_encoder_func_t encoder)
{
    xop = xo_default(xop);

    xop->xo_style = XO_STYLE_ENCODER;
    xop->xo_encoder = encoder;
}
