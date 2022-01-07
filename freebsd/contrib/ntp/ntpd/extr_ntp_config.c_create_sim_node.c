
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * servers; int * init_opts; } ;
typedef TYPE_1__ sim_node ;
typedef int server_info_fifo ;
typedef int attr_val_fifo ;


 TYPE_1__* emalloc (int) ;

sim_node *
create_sim_node(
 attr_val_fifo * init_opts,
 server_info_fifo * servers
 )
{
 sim_node *my_node;

 my_node = emalloc(sizeof(*my_node));
 my_node->init_opts = init_opts;
 my_node->servers = servers;

 return my_node;
}
