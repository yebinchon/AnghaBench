
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ xb_curp; scalar_t__ xb_bufp; } ;
struct TYPE_7__ {int xo_opaque; int (* xo_write ) (int ,scalar_t__) ;TYPE_2__ xo_data; } ;
typedef TYPE_1__ xo_handle_t ;
typedef TYPE_2__ xo_buffer_t ;
typedef int ssize_t ;


 int XOIF_CLEAR (TYPE_1__*,int ) ;
 int XOIF_UNITS_PENDING ;
 int stub1 (int ,scalar_t__) ;
 int xo_anchor_clear (TYPE_1__*) ;
 int xo_buf_append (TYPE_2__*,char*,int) ;

__attribute__((used)) static ssize_t
xo_write (xo_handle_t *xop)
{
    ssize_t rc = 0;
    xo_buffer_t *xbp = &xop->xo_data;

    if (xbp->xb_curp != xbp->xb_bufp) {
 xo_buf_append(xbp, "", 1);
 xo_anchor_clear(xop);
 if (xop->xo_write)
     rc = xop->xo_write(xop->xo_opaque, xbp->xb_bufp);
 xbp->xb_curp = xbp->xb_bufp;
    }


    XOIF_CLEAR(xop, XOIF_UNITS_PENDING);

    return rc;
}
