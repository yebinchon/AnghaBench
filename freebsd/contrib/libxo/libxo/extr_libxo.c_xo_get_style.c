
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_style_t ;
typedef int xo_handle_t ;


 int * xo_default (int *) ;
 int xo_style (int *) ;

xo_style_t
xo_get_style (xo_handle_t *xop)
{
    xop = xo_default(xop);
    return xo_style(xop);
}
