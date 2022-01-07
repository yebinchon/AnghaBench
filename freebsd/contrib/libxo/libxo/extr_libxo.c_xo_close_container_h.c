
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;
typedef int xo_handle_t ;


 int XSS_CLOSE_CONTAINER ;
 int xo_transition (int *,int ,char const*,int ) ;

xo_ssize_t
xo_close_container_h (xo_handle_t *xop, const char *name)
{
    return xo_transition(xop, 0, name, XSS_CLOSE_CONTAINER);
}
