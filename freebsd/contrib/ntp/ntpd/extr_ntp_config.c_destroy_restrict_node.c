
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flag_tok_fifo; int mask; int addr; } ;
typedef TYPE_1__ restrict_node ;


 int destroy_address_node (int ) ;
 int destroy_int_fifo (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
destroy_restrict_node(
 restrict_node *my_node
 )
{



 destroy_address_node(my_node->addr);
 destroy_address_node(my_node->mask);
 destroy_int_fifo(my_node->flag_tok_fifo);
 free(my_node);
}
