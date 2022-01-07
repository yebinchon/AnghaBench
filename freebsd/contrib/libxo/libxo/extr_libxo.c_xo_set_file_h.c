
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int xo_flush; int xo_close; int xo_write; int * xo_opaque; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int FILE ;


 int xo_close_file ;
 TYPE_1__* xo_default (TYPE_1__*) ;
 int xo_failure (TYPE_1__*,char*) ;
 int xo_flush_file ;
 int xo_write_to_file ;

int
xo_set_file_h (xo_handle_t *xop, FILE *fp)
{
    xop = xo_default(xop);

    if (fp == ((void*)0)) {
 xo_failure(xop, "xo_set_file: NULL fp");
 return -1;
    }

    xop->xo_opaque = fp;
    xop->xo_write = xo_write_to_file;
    xop->xo_close = xo_close_file;
    xop->xo_flush = xo_flush_file;

    return 0;
}
