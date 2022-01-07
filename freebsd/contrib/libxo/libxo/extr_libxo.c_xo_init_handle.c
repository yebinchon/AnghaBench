
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int xo_indent_by; int xo_fmt; int xo_data; int xo_flush; int xo_write; int xo_opaque; } ;
typedef TYPE_1__ xo_handle_t ;


 int LC_CTYPE ;
 int XOF_FLUSH_LINE ;
 int XOF_SET (TYPE_1__*,int ) ;
 int XOIF_CLEAR (TYPE_1__*,int ) ;
 int XOIF_INIT_IN_PROGRESS ;
 scalar_t__ XOIF_ISSET (TYPE_1__*,int ) ;
 int XOIF_SET (TYPE_1__*,int ) ;
 int XO_DEPTH ;
 int XO_INDENT_BY ;
 char* getenv (char*) ;
 int setlocale (int ,char const*) ;
 int stdout ;
 int xo_buf_init (int *) ;
 int xo_depth_check (TYPE_1__*,int ) ;
 int xo_flush_file ;
 scalar_t__ xo_is_line_buffered (int ) ;
 int xo_locale_inited ;
 int xo_write_to_file ;

__attribute__((used)) static void
xo_init_handle (xo_handle_t *xop)
{
    xop->xo_opaque = stdout;
    xop->xo_write = xo_write_to_file;
    xop->xo_flush = xo_flush_file;

    if (xo_is_line_buffered(stdout))
 XOF_SET(xop, XOF_FLUSH_LINE);







    if (!xo_locale_inited) {
 xo_locale_inited = 1;




 const char *cp = getenv("LC_ALL");
 if (cp == ((void*)0))
     cp = getenv("LC_CTYPE");
 if (cp == ((void*)0))
     cp = getenv("LANG");
 if (cp == ((void*)0))
     cp = "C";


 (void) setlocale(LC_CTYPE, cp);
    }





    xo_buf_init(&xop->xo_data);
    xo_buf_init(&xop->xo_fmt);

    if (XOIF_ISSET(xop, XOIF_INIT_IN_PROGRESS))
 return;
    XOIF_SET(xop, XOIF_INIT_IN_PROGRESS);

    xop->xo_indent_by = XO_INDENT_BY;
    xo_depth_check(xop, XO_DEPTH);

    XOIF_CLEAR(xop, XOIF_INIT_IN_PROGRESS);
}
