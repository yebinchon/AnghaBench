
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int xo_xof_flags_t ;
typedef void* xo_style_t ;
struct TYPE_7__ {void* xo_style; } ;
typedef TYPE_1__ xo_handle_t ;


 int XOF_SET (TYPE_1__*,int ) ;
 int bzero (TYPE_1__*,int) ;
 int xo_init_handle (TYPE_1__*) ;
 TYPE_1__* xo_realloc (int *,int) ;

xo_handle_t *
xo_create (xo_style_t style, xo_xof_flags_t flags)
{
    xo_handle_t *xop = xo_realloc(((void*)0), sizeof(*xop));

    if (xop) {
 bzero(xop, sizeof(*xop));

 xop->xo_style = style;
 XOF_SET(xop, flags);
 xo_init_handle(xop);
 xop->xo_style = style;
    }

    return xop;
}
