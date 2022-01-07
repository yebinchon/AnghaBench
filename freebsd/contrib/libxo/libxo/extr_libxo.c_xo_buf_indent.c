
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int xb_curp; } ;
struct TYPE_6__ {TYPE_2__ xo_data; } ;
typedef TYPE_1__ xo_handle_t ;
typedef TYPE_2__ xo_buffer_t ;


 int memset (int,char,int) ;
 int xo_buf_has_room (TYPE_2__*,int) ;
 int xo_indent (TYPE_1__*) ;

__attribute__((used)) static void
xo_buf_indent (xo_handle_t *xop, int indent)
{
    xo_buffer_t *xbp = &xop->xo_data;

    if (indent <= 0)
 indent = xo_indent(xop);

    if (!xo_buf_has_room(xbp, indent))
 return;

    memset(xbp->xb_curp, ' ', indent);
    xbp->xb_curp += indent;
}
