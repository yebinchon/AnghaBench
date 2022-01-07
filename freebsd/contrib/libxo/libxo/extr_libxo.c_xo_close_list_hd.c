
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;
typedef int xo_handle_t ;


 int xo_close_list_h (int *,int *) ;

xo_ssize_t
xo_close_list_hd (xo_handle_t *xop)
{
    return xo_close_list_h(xop, ((void*)0));
}
