
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ guid; } ;
typedef TYPE_1__ ibnd_node_t ;
struct TYPE_5__ {scalar_t__ chassisguid; TYPE_1__** spinenode; } ;
typedef TYPE_2__ ibnd_chassis_t ;


 int SPINES_MAX_NUM ;

__attribute__((used)) static void pass_on_spines_interpolate_chguid(ibnd_chassis_t * chassis)
{
 ibnd_node_t *node;
 int i;

 for (i = 1; i <= SPINES_MAX_NUM; i++) {
  node = chassis->spinenode[i];
  if (!node)
   continue;


  chassis->chassisguid = node->guid - 1;
  break;
 }
}
