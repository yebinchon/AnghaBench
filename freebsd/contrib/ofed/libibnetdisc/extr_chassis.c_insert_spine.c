
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* chassis; } ;
typedef TYPE_1__ ibnd_node_t ;
struct TYPE_7__ {TYPE_1__** spinenode; } ;
typedef TYPE_2__ ibnd_chassis_t ;


 int get_spine_index (TYPE_1__*) ;

__attribute__((used)) static int insert_spine(ibnd_node_t * node, ibnd_chassis_t * chassis)
{
 int i = get_spine_index(node);

 if (i < 0)
  return i;

 if (chassis->spinenode[i])
  return 0;

 chassis->spinenode[i] = node;
 node->chassis = chassis;
 return 0;
}
