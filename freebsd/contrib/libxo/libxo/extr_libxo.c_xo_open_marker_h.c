
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xo_ssize_t ;
struct TYPE_8__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef TYPE_2__ xo_handle_t ;
struct TYPE_7__ {int xs_flags; } ;


 int XSF_MARKER_FLAGS ;
 int XSS_MARKER ;
 TYPE_2__* xo_default (TYPE_2__*) ;
 int xo_depth_change (TYPE_2__*,char const*,int,int ,int ,int) ;

xo_ssize_t
xo_open_marker_h (xo_handle_t *xop, const char *name)
{
    xop = xo_default(xop);

    xo_depth_change(xop, name, 1, 0, XSS_MARKER,
      xop->xo_stack[xop->xo_depth].xs_flags & XSF_MARKER_FLAGS);

    return 0;
}
