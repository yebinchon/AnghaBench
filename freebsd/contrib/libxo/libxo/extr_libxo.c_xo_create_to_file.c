
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xo_xof_flags_t ;
typedef int xo_style_t ;
struct TYPE_4__ {int xo_flush; int xo_close; int xo_write; int * xo_opaque; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int FILE ;


 int xo_close_file ;
 TYPE_1__* xo_create (int ,int ) ;
 int xo_flush_file ;
 int xo_write_to_file ;

xo_handle_t *
xo_create_to_file (FILE *fp, xo_style_t style, xo_xof_flags_t flags)
{
    xo_handle_t *xop = xo_create(style, flags);

    if (xop) {
 xop->xo_opaque = fp;
 xop->xo_write = xo_write_to_file;
 xop->xo_close = xo_close_file;
 xop->xo_flush = xo_flush_file;
    }

    return xop;
}
