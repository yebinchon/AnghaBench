
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filegen_token; int * options; } ;
typedef TYPE_1__ filegen_node ;
typedef int attr_val_fifo ;


 TYPE_1__* emalloc_zero (int) ;

filegen_node *
create_filegen_node(
 int filegen_token,
 attr_val_fifo * options
 )
{
 filegen_node *my_node;

 my_node = emalloc_zero(sizeof(*my_node));
 my_node->filegen_token = filegen_token;
 my_node->options = options;

 return my_node;
}
