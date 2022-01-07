
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xo_checkpointer; int xo_formatter; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int xo_formatter_t ;
typedef int xo_checkpointer_t ;


 TYPE_1__* xo_default (TYPE_1__*) ;

void
xo_set_formatter (xo_handle_t *xop, xo_formatter_t func,
    xo_checkpointer_t cfunc)
{
    xop = xo_default(xop);

    xop->xo_formatter = func;
    xop->xo_checkpointer = cfunc;
}
