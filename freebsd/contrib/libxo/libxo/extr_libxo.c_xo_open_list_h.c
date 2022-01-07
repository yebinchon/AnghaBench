
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;
typedef int xo_handle_t ;


 int xo_open_list_hf (int *,int ,char const*) ;

xo_ssize_t
xo_open_list_h (xo_handle_t *xop, const char *name)
{
    return xo_open_list_hf(xop, 0, name);
}
