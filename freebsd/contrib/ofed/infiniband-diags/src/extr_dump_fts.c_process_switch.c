
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibnd_node_t ;
typedef int ibnd_fabric_t ;


 int dump_node (int *,int ,int *) ;
 int srcport ;

void process_switch(ibnd_node_t * node, void *fabric)
{
 dump_node(node, srcport, (ibnd_fabric_t *)fabric);
}
