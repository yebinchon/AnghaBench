
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_xsf_flags_t ;
typedef int xo_xof_flags_t ;
typedef int xo_state_t ;
typedef int xo_handle_t ;


 int XOF_ISSET (int *,int ) ;
 int XOF_NOT_FIRST ;
 int XSF_LIST ;
 int XSF_NOT_FIRST ;




 int * xo_default (int *) ;
 int xo_depth_change (int *,char const*,int,int,int const,int) ;
 int xo_do_close_instance (int *,char const*) ;
 int xo_do_close_list (int *,char const*) ;
 int xo_do_open_instance (int *,int ,char const*) ;
 int xo_do_open_list (int *,int ,char const*) ;
 int xo_stack_flags (int ) ;
 int xo_stack_set_flags (int *) ;

void
xo_explicit_transition (xo_handle_t *xop, xo_state_t new_state,
   const char *name, xo_xof_flags_t flags)
{
    xo_xsf_flags_t xsf_flags;

    xop = xo_default(xop);

    switch (new_state) {

    case 128:
 xo_do_open_list(xop, flags, name);
 break;

    case 129:
 xo_do_open_instance(xop, flags, name);
 break;

    case 131:
 xo_depth_change(xop, name, 1, 1, 129,
   xo_stack_flags(flags));
 xo_stack_set_flags(xop);
 xo_do_close_instance(xop, name);
 break;

    case 130:
 xsf_flags = XOF_ISSET(xop, XOF_NOT_FIRST) ? XSF_NOT_FIRST : 0;

 xo_depth_change(xop, name, 1, 1, 128,
   XSF_LIST | xsf_flags | xo_stack_flags(flags));
 xo_do_close_list(xop, name);
 break;
    }
}
