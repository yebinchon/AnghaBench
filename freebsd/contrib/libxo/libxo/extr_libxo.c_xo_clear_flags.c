
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_xof_flags_t ;
typedef int xo_handle_t ;


 int XOF_CLEAR (int *,int ) ;
 int * xo_default (int *) ;

void
xo_clear_flags (xo_handle_t *xop, xo_xof_flags_t flags)
{
    xop = xo_default(xop);

    XOF_CLEAR(xop, flags);
}
