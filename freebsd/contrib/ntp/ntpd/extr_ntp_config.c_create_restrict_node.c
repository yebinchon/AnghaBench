
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {short ippeerlimit; int line_no; int * flag_tok_fifo; int * mask; int * addr; } ;
typedef TYPE_1__ restrict_node ;
typedef int int_fifo ;
typedef int address_node ;


 TYPE_1__* emalloc_zero (int) ;

restrict_node *
create_restrict_node(
 address_node * addr,
 address_node * mask,
 short ippeerlimit,
 int_fifo * flag_tok_fifo,
 int line_no
 )
{
 restrict_node *my_node;

 my_node = emalloc_zero(sizeof(*my_node));
 my_node->addr = addr;
 my_node->mask = mask;
 my_node->ippeerlimit = ippeerlimit;
 my_node->flag_tok_fifo = flag_tok_fifo;
 my_node->line_no = line_no;

 return my_node;
}
