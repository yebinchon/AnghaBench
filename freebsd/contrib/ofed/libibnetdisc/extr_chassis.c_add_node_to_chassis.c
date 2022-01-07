
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next_chassis_node; TYPE_2__* chassis; } ;
typedef TYPE_1__ ibnd_node_t ;
struct TYPE_6__ {TYPE_1__* nodes; } ;
typedef TYPE_2__ ibnd_chassis_t ;



__attribute__((used)) static void add_node_to_chassis(ibnd_chassis_t * chassis, ibnd_node_t * node)
{
 node->chassis = chassis;
 node->next_chassis_node = chassis->nodes;
 chassis->nodes = node;
}
