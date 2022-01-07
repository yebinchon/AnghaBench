
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xe_handler; } ;
typedef TYPE_1__ xo_encoder_node_t ;
typedef int xo_encoder_func_t ;


 TYPE_1__* xo_encoder_find (char const*) ;
 TYPE_1__* xo_encoder_list_add (char const*) ;
 int xo_encoder_setup () ;

void
xo_encoder_register (const char *name, xo_encoder_func_t func)
{
    xo_encoder_setup();

    xo_encoder_node_t *xep = xo_encoder_find(name);

    if (xep)
 return;

    xep = xo_encoder_list_add(name);
    if (xep)
 xep->xe_handler = func;
}
