
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* xo_private; } ;
typedef TYPE_1__ xo_handle_t ;


 TYPE_1__* xo_default (TYPE_1__*) ;

void
xo_set_private (xo_handle_t *xop, void *opaque)
{
    xop = xo_default(xop);
    xop->xo_private = opaque;
}
