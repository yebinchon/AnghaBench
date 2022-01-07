
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xo_encoder; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int xo_encoder_func_t ;


 TYPE_1__* xo_default (TYPE_1__*) ;

xo_encoder_func_t
xo_get_encoder (xo_handle_t *xop)
{
    xop = xo_default(xop);
    return xop->xo_encoder;
}
