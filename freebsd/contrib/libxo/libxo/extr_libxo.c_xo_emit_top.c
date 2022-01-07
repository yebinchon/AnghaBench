
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * xo_version; } ;
typedef TYPE_1__ xo_handle_t ;


 int XOIF_SET (TYPE_1__*,int ) ;
 int XOIF_TOP_EMITTED ;
 int xo_free (int *) ;
 int xo_indent (TYPE_1__*) ;
 int xo_printf (TYPE_1__*,char*,int ,char*,char const*,...) ;

__attribute__((used)) static void
xo_emit_top (xo_handle_t *xop, const char *ppn)
{
    xo_printf(xop, "%*s{%s", xo_indent(xop), "", ppn);
    XOIF_SET(xop, XOIF_TOP_EMITTED);

    if (xop->xo_version) {
 xo_printf(xop, "%*s\"__version\": \"%s\", %s",
    xo_indent(xop), "", xop->xo_version, ppn);
 xo_free(xop->xo_version);
 xop->xo_version = ((void*)0);
    }
}
