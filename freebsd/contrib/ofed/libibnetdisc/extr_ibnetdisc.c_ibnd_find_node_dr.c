
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * node; } ;
typedef TYPE_1__ ibnd_port_t ;
typedef int ibnd_node_t ;
typedef int ibnd_fabric_t ;


 TYPE_1__* ibnd_find_port_dr (int *,char*) ;

ibnd_node_t *ibnd_find_node_dr(ibnd_fabric_t * fabric, char *dr_str)
{
 ibnd_port_t *rc = ibnd_find_port_dr(fabric, dr_str);
 return rc->node;
}
