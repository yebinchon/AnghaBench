
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t vdev_children; int vdev_ms_list; struct TYPE_9__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int txg_list_t ;
struct TYPE_10__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {int ms_checkpointing; int ms_freeing; } ;
typedef TYPE_3__ metaslab_t ;
struct TYPE_12__ {TYPE_2__* dp_spa; } ;
typedef TYPE_4__ dsl_pool_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int TXG_CLEAN (size_t) ;
 int VERIFY (int ) ;
 int range_tree_is_empty (int ) ;
 TYPE_3__* txg_list_head (int *,int ) ;
 TYPE_3__* txg_list_next (int *,TYPE_3__*,int ) ;

__attribute__((used)) static boolean_t
dsl_early_sync_task_verify(dsl_pool_t *dp, uint64_t txg)
{
 spa_t *spa = dp->dp_spa;
 vdev_t *rvd = spa->spa_root_vdev;

 for (uint64_t c = 0; c < rvd->vdev_children; c++) {
  vdev_t *vd = rvd->vdev_child[c];
  txg_list_t *tl = &vd->vdev_ms_list;
  metaslab_t *ms;

  for (ms = txg_list_head(tl, TXG_CLEAN(txg)); ms;
      ms = txg_list_next(tl, ms, TXG_CLEAN(txg))) {
   VERIFY(range_tree_is_empty(ms->ms_freeing));
   VERIFY(range_tree_is_empty(ms->ms_checkpointing));
  }
 }

 return (B_TRUE);
}
