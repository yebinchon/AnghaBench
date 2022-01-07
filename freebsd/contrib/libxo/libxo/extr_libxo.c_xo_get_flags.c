
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xo_xof_flags_t ;
struct TYPE_5__ {int xo_flags; } ;
typedef TYPE_1__ xo_handle_t ;


 TYPE_1__* xo_default (TYPE_1__*) ;

xo_xof_flags_t
xo_get_flags (xo_handle_t *xop)
{
    xop = xo_default(xop);

    return xop->xo_flags;
}
