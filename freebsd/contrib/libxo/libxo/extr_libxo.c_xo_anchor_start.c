
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ xb_bufp; scalar_t__ xb_curp; } ;
struct TYPE_8__ {int xo_anchor_min_width; scalar_t__ xo_anchor_columns; scalar_t__ xo_anchor_offset; TYPE_2__ xo_data; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int xo_field_info_t ;
typedef TYPE_2__ xo_buffer_t ;
typedef int ssize_t ;


 int XOIF_ANCHOR ;
 scalar_t__ XOIF_ISSET (TYPE_1__*,int ) ;
 int XOIF_SET (TYPE_1__*,int ) ;
 int xo_failure (TYPE_1__*,char*) ;
 int xo_find_width (TYPE_1__*,int *,char const*,int ) ;

__attribute__((used)) static void
xo_anchor_start (xo_handle_t *xop, xo_field_info_t *xfip,
   const char *value, ssize_t vlen)
{
    if (XOIF_ISSET(xop, XOIF_ANCHOR))
 xo_failure(xop, "the anchor already recording is discarded");

    XOIF_SET(xop, XOIF_ANCHOR);
    xo_buffer_t *xbp = &xop->xo_data;
    xop->xo_anchor_offset = xbp->xb_curp - xbp->xb_bufp;
    xop->xo_anchor_columns = 0;





    xop->xo_anchor_min_width = xo_find_width(xop, xfip, value, vlen);
}
