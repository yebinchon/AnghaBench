
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char* xs_name; int xs_flags; } ;
typedef TYPE_1__ xo_stack_t ;
struct TYPE_15__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef TYPE_2__ xo_handle_t ;
typedef int ssize_t ;


 scalar_t__ XOF_ISSET (TYPE_2__*,int ) ;
 int XOF_PRETTY ;
 char* XO_FAILURE_NAME ;
 int XO_OP_CLOSE_INSTANCE ;






 int XSF_DTRT ;
 int XSF_NOT_FIRST ;
 int XSS_CLOSE_INSTANCE ;
 char* alloca (int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 TYPE_2__* xo_default (TYPE_2__*) ;
 int xo_depth_change (TYPE_2__*,char const*,int,int,int ,int ) ;
 int xo_encoder_handle (TYPE_2__*,int ,char const*,int *,int ) ;
 int xo_failure (TYPE_2__*,char*) ;
 int xo_indent (TYPE_2__*) ;
 int xo_printf (TYPE_2__*,char*,char const*,char*,char const*,...) ;
 int xo_style (TYPE_2__*) ;
 char* xo_xml_leader (TYPE_2__*,char const*) ;

__attribute__((used)) static int
xo_do_close_instance (xo_handle_t *xop, const char *name)
{
    xop = xo_default(xop);

    ssize_t rc = 0;
    const char *ppn = XOF_ISSET(xop, XOF_PRETTY) ? "\n" : "";
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

    const char *leader = xo_xml_leader(xop, name);

    switch (xo_style(xop)) {
    case 128:
 xo_depth_change(xop, name, -1, -1, XSS_CLOSE_INSTANCE, 0);
 rc = xo_printf(xop, "%*s</%s%s>%s", xo_indent(xop), "", leader, name, ppn);
 break;

    case 131:
 pre_nl = XOF_ISSET(xop, XOF_PRETTY) ? "\n" : "";

 xo_depth_change(xop, name, -1, -1, XSS_CLOSE_INSTANCE, 0);
 rc = xo_printf(xop, "%s%*s}", pre_nl, xo_indent(xop), "");
 xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;
 break;

    case 132:
    case 129:
 xo_depth_change(xop, name, -1, 0, XSS_CLOSE_INSTANCE, 0);
 break;

    case 130:
 break;

    case 133:
 xo_depth_change(xop, name, -1, 0, XSS_CLOSE_INSTANCE, 0);
 rc = xo_encoder_handle(xop, XO_OP_CLOSE_INSTANCE, name, ((void*)0), 0);
 break;
    }

    return rc;
}
