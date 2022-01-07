
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;
typedef int xo_handle_t ;


 int XSS_MARKER ;
 int * xo_default (int *) ;
 int xo_do_close (int *,char const*,int ) ;

xo_ssize_t
xo_close_marker_h (xo_handle_t *xop, const char *name)
{
    xop = xo_default(xop);

    return xo_do_close(xop, name, XSS_MARKER);
}
