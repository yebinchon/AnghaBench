
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ xo_depth; int xo_indent; scalar_t__ xo_style; } ;
typedef TYPE_1__ xo_handle_t ;


 int XOF_ISSET (TYPE_1__*,int ) ;
 int XOF_NO_TOP ;
 int XOIF_SET (TYPE_1__*,int ) ;
 int XOIF_TOP_EMITTED ;
 scalar_t__ XO_STYLE_JSON ;
 TYPE_1__* xo_default (TYPE_1__*) ;
 scalar_t__ xo_depth_check (TYPE_1__*,int) ;

void
xo_set_depth (xo_handle_t *xop, int depth)
{
    xop = xo_default(xop);

    if (xo_depth_check(xop, depth))
 return;

    xop->xo_depth += depth;
    xop->xo_indent += depth;






    if (xop->xo_style == XO_STYLE_JSON
 && !XOF_ISSET(xop, XOF_NO_TOP) && xop->xo_depth > 0)
 XOIF_SET(xop, XOIF_TOP_EMITTED);
}
