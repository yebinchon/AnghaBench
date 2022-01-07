
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xo_anchor_min_width; scalar_t__ xo_anchor_columns; scalar_t__ xo_anchor_offset; } ;
typedef TYPE_1__ xo_handle_t ;


 int XOIF_ANCHOR ;
 int XOIF_CLEAR (TYPE_1__*,int ) ;

__attribute__((used)) static void
xo_anchor_clear (xo_handle_t *xop)
{
    XOIF_CLEAR(xop, XOIF_ANCHOR);
    xop->xo_anchor_offset = 0;
    xop->xo_anchor_columns = 0;
    xop->xo_anchor_min_width = 0;
}
