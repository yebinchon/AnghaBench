
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vs_checksum_errors; scalar_t__ vs_write_errors; scalar_t__ vs_read_errors; } ;
struct TYPE_7__ {int vdev_children; struct TYPE_7__** vdev_child; int vdev_top; TYPE_1__ vdev_stat; void* vdev_delayed_close; void* vdev_remove_wanted; } ;
typedef TYPE_2__ vdev_t ;
typedef int spa_t ;


 void* B_FALSE ;
 int VDEV_AUX_NONE ;
 int VDEV_STATE_REMOVED ;
 int vdev_set_state (TYPE_2__*,void*,int ,int ) ;
 int vdev_state_dirty (int ) ;
 int zfs_post_remove (int *,TYPE_2__*) ;

__attribute__((used)) static void
spa_async_remove(spa_t *spa, vdev_t *vd)
{
 if (vd->vdev_remove_wanted) {
  vd->vdev_remove_wanted = B_FALSE;
  vd->vdev_delayed_close = B_FALSE;
  vdev_set_state(vd, B_FALSE, VDEV_STATE_REMOVED, VDEV_AUX_NONE);







  vd->vdev_stat.vs_read_errors = 0;
  vd->vdev_stat.vs_write_errors = 0;
  vd->vdev_stat.vs_checksum_errors = 0;

  vdev_state_dirty(vd->vdev_top);

  zfs_post_remove(spa, vd);
 }

 for (int c = 0; c < vd->vdev_children; c++)
  spa_async_remove(spa, vd->vdev_child[c]);
}
