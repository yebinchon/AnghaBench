
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int xo_ssize_t ;
struct TYPE_14__ {int xo_stack; } ;
typedef TYPE_1__ xo_handle_t ;


 scalar_t__ XOF_ISSET (TYPE_1__*,int ) ;
 int XOF_NO_CLOSE ;
 int XOF_NO_TOP ;
 int XOF_PRETTY ;
 int XOIF_CLEAR (TYPE_1__*,int ) ;
 int XOIF_ISSET (TYPE_1__*,int ) ;
 int XOIF_MADE_OUTPUT ;
 int XOIF_TOP_EMITTED ;
 int XO_OP_FINISH ;


 TYPE_1__* xo_default (TYPE_1__*) ;
 int xo_do_close_all (TYPE_1__*,int ) ;
 int xo_encoder_handle (TYPE_1__*,int ,int *,int *,int ) ;
 int xo_flush_h (TYPE_1__*) ;
 int xo_indent (TYPE_1__*) ;
 int xo_printf (TYPE_1__*,char*,char const*,int ,char*,char const*) ;
 int xo_style (TYPE_1__*) ;

xo_ssize_t
xo_finish_h (xo_handle_t *xop)
{
    const char *open_if_empty = "";
    xop = xo_default(xop);

    if (!XOF_ISSET(xop, XOF_NO_CLOSE))
 xo_do_close_all(xop, xop->xo_stack);

    switch (xo_style(xop)) {
    case 128:
 if (!XOF_ISSET(xop, XOF_NO_TOP)) {
     const char *pre_nl = XOF_ISSET(xop, XOF_PRETTY) ? "\n" : "";

     if (XOIF_ISSET(xop, XOIF_TOP_EMITTED))
  XOIF_CLEAR(xop, XOIF_TOP_EMITTED);
     else if (!XOIF_ISSET(xop, XOIF_MADE_OUTPUT)) {
  open_if_empty = "{ ";
  pre_nl = "";
     }

     xo_printf(xop, "%s%*s%s}\n",
        pre_nl, xo_indent(xop), "", open_if_empty);
 }
 break;

    case 129:
 xo_encoder_handle(xop, XO_OP_FINISH, ((void*)0), ((void*)0), 0);
 break;
    }

    return xo_flush_h(xop);
}
