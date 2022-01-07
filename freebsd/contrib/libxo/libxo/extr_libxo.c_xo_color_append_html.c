
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ xb_bufp; scalar_t__ xb_curp; } ;
struct TYPE_6__ {TYPE_2__ xo_color_buf; } ;
typedef TYPE_1__ xo_handle_t ;
typedef TYPE_2__ xo_buffer_t ;


 int xo_buf_is_empty (TYPE_2__*) ;
 int xo_data_append (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
xo_color_append_html (xo_handle_t *xop)
{




    if (!xo_buf_is_empty(&xop->xo_color_buf)) {
 xo_buffer_t *xbp = &xop->xo_color_buf;

 xo_data_append(xop, xbp->xb_bufp, xbp->xb_curp - xbp->xb_bufp);
    }
}
