
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xo_write_func_t ;
struct TYPE_5__ {int xo_flush; int xo_close; int xo_write; void* xo_opaque; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int xo_flush_func_t ;
typedef int xo_close_func_t ;


 TYPE_1__* xo_default (TYPE_1__*) ;

void
xo_set_writer (xo_handle_t *xop, void *opaque, xo_write_func_t write_func,
        xo_close_func_t close_func, xo_flush_func_t flush_func)
{
    xop = xo_default(xop);

    xop->xo_opaque = opaque;
    xop->xo_write = write_func;
    xop->xo_close = close_func;
    xop->xo_flush = flush_func;
}
