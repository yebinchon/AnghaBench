
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ch_slot; size_t ch_slotnum; TYPE_2__* chassis; } ;
typedef TYPE_1__ ibnd_node_t ;
struct TYPE_6__ {TYPE_1__** spinenode; TYPE_1__** linenode; } ;
typedef TYPE_2__ ibnd_chassis_t ;


 scalar_t__ LINE_CS ;
 scalar_t__ SPINE_CS ;

__attribute__((used)) static int insert_mellanox_line_and_spine(ibnd_node_t * node, ibnd_chassis_t * chassis)
{
 if (node->ch_slot == LINE_CS){

  if (chassis->linenode[node->ch_slotnum])
   return 0;

  chassis->linenode[node->ch_slotnum] = node;
 }
 else if (node->ch_slot == SPINE_CS){

  if (chassis->spinenode[node->ch_slotnum])
   return 0;

  chassis->spinenode[node->ch_slotnum] = node;
 }
 else
  return 0;

 node->chassis = chassis;

 return 0;
}
