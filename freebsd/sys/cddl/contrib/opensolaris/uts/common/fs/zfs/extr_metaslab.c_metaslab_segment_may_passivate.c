
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_9__ {int ms_activation_weight; int ms_weight; TYPE_2__* ms_group; } ;
typedef TYPE_3__ metaslab_t ;
struct TYPE_8__ {TYPE_1__* mg_vd; } ;
struct TYPE_7__ {int * vdev_spa; } ;


 int WEIGHT_GET_INDEX (int ) ;
 scalar_t__ WEIGHT_IS_SPACEBASED (int ) ;
 int metaslab_passivate (TYPE_3__*,int ) ;
 int metaslab_weight_from_range_tree (TYPE_3__*) ;
 int spa_sync_pass (int *) ;
 int zfs_metaslab_switch_threshold ;

void
metaslab_segment_may_passivate(metaslab_t *msp)
{
 spa_t *spa = msp->ms_group->mg_vd->vdev_spa;

 if (WEIGHT_IS_SPACEBASED(msp->ms_weight) || spa_sync_pass(spa) > 1)
  return;






 uint64_t weight = metaslab_weight_from_range_tree(msp);
 int activation_idx = WEIGHT_GET_INDEX(msp->ms_activation_weight);
 int current_idx = WEIGHT_GET_INDEX(weight);

 if (current_idx <= activation_idx - zfs_metaslab_switch_threshold)
  metaslab_passivate(msp, weight);
}
