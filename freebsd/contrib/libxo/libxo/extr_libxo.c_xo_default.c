
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;


 int xo_default_handle ;
 int xo_default_init () ;
 scalar_t__ xo_default_inited ;

__attribute__((used)) static xo_handle_t *
xo_default (xo_handle_t *xop)
{
    if (xop == ((void*)0)) {
 if (xo_default_inited == 0)
     xo_default_init();
 xop = &xo_default_handle;
    }

    return xop;
}
