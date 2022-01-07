
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibnd_fabric_t ;


 int IB_NODE_CA ;
 int IB_NODE_ROUTER ;
 int IB_NODE_SWITCH ;
 int LIST_CA_NODE ;
 int LIST_ROUTER_NODE ;
 int LIST_SWITCH_NODE ;
 int ibnd_iter_nodes_type (int *,int ,int ,int *) ;
 int list_node ;

void list_nodes(ibnd_fabric_t * fabric, int list)
{
 if (list & LIST_CA_NODE)
  ibnd_iter_nodes_type(fabric, list_node, IB_NODE_CA, ((void*)0));
 if (list & LIST_SWITCH_NODE)
  ibnd_iter_nodes_type(fabric, list_node, IB_NODE_SWITCH, ((void*)0));
 if (list & LIST_ROUTER_NODE)
  ibnd_iter_nodes_type(fabric, list_node, IB_NODE_ROUTER, ((void*)0));
}
