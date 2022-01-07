
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* xs_name; int xs_flags; } ;
typedef TYPE_1__ xo_stack_t ;
struct TYPE_12__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef TYPE_2__ xo_handle_t ;
typedef int ssize_t ;


 int XOF_ISSET (TYPE_2__*,int ) ;
 int XOF_PRETTY ;
 char* XO_FAILURE_NAME ;
 int XO_OP_CLOSE_LIST ;


 int XSF_DTRT ;
 int XSF_LIST ;
 int XSF_NOT_FIRST ;
 int XSS_CLOSE_LIST ;
 char* alloca (int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int xo_depth_change (TYPE_2__*,char const*,int,int,int ,int ) ;
 int xo_encoder_handle (TYPE_2__*,int ,char const*,int *,int ) ;
 int xo_failure (TYPE_2__*,char*) ;
 int xo_indent (TYPE_2__*) ;
 int xo_printf (TYPE_2__*,char*,char const*,int ,char*) ;
 int xo_style (TYPE_2__*) ;

__attribute__((used)) static int
xo_do_close_list (xo_handle_t *xop, const char *name)
{
    ssize_t rc = 0;
    const char *pre_nl = "";

    if (name == ((void*)0)) {
 xo_stack_t *xsp = &xop->xo_stack[xop->xo_depth];

 name = xsp->xs_name;
 if (name) {
     ssize_t len = strlen(name) + 1;

     char *cp = alloca(len);
     memcpy(cp, name, len);
     name = cp;
 } else if (!(xsp->xs_flags & XSF_DTRT)) {
     xo_failure(xop, "missing name without 'dtrt' mode");
     name = XO_FAILURE_NAME;
 }
    }

    switch (xo_style(xop)) {
    case 128:
 if (xop->xo_stack[xop->xo_depth].xs_flags & XSF_NOT_FIRST)
     pre_nl = XOF_ISSET(xop, XOF_PRETTY) ? "\n" : "";
 xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;

 xo_depth_change(xop, name, -1, -1, XSS_CLOSE_LIST, XSF_LIST);
 rc = xo_printf(xop, "%s%*s]", pre_nl, xo_indent(xop), "");
 xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;
 break;

    case 129:
 xo_depth_change(xop, name, -1, 0, XSS_CLOSE_LIST, XSF_LIST);
 rc = xo_encoder_handle(xop, XO_OP_CLOSE_LIST, name, ((void*)0), 0);
 break;

    default:
 xo_depth_change(xop, name, -1, 0, XSS_CLOSE_LIST, XSF_LIST);
 xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;
 break;
    }

    return rc;
}
