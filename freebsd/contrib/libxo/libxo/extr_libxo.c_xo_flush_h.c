
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int xo_ssize_t ;
struct TYPE_8__ {scalar_t__ (* xo_flush ) (int ) ;int xo_opaque; } ;
typedef TYPE_1__ xo_handle_t ;
typedef scalar_t__ ssize_t ;


 int XO_OP_FLUSH ;

 scalar_t__ stub1 (int ) ;
 TYPE_1__* xo_default (TYPE_1__*) ;
 int xo_encoder_handle (TYPE_1__*,int ,int *,int *,int ) ;
 int xo_style (TYPE_1__*) ;
 scalar_t__ xo_write (TYPE_1__*) ;

xo_ssize_t
xo_flush_h (xo_handle_t *xop)
{
    ssize_t rc;

    xop = xo_default(xop);

    switch (xo_style(xop)) {
    case 128:
 xo_encoder_handle(xop, XO_OP_FLUSH, ((void*)0), ((void*)0), 0);
    }

    rc = xo_write(xop);
    if (rc >= 0 && xop->xo_flush)
 if (xop->xo_flush(xop->xo_opaque) < 0)
     return -1;

    return rc;
}
