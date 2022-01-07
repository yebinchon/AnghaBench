
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_xof_flags_t ;
typedef int xo_ssize_t ;
typedef int xo_handle_t ;


 int XSS_OPEN_LIST ;
 int xo_transition (int *,int ,char const*,int ) ;

xo_ssize_t
xo_open_list_hf (xo_handle_t *xop, xo_xof_flags_t flags, const char *name)
{
    return xo_transition(xop, flags, name, XSS_OPEN_LIST);
}
