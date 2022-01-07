
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int attr_val_fifo ;
typedef int address_node ;
struct TYPE_4__ {int * options; int * addr; } ;
typedef TYPE_1__ addr_opts_node ;


 TYPE_1__* emalloc_zero (int) ;

addr_opts_node *
create_addr_opts_node(
 address_node * addr,
 attr_val_fifo * options
 )
{
 addr_opts_node *my_node;

 my_node = emalloc_zero(sizeof(*my_node));
 my_node->addr = addr;
 my_node->options = options;

 return my_node;
}
