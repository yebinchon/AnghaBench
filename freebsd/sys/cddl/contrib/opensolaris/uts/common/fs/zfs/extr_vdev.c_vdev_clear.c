
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ vs_checksum_errors; scalar_t__ vs_write_errors; scalar_t__ vs_read_errors; } ;
struct TYPE_23__ {int vdev_children; unsigned long long vdev_faulted; unsigned long long vdev_degraded; void* vdev_unspare; TYPE_4__* vdev_parent; int * vdev_aux; struct TYPE_23__* vdev_top; void* vdev_forcefault; void* vdev_cant_write; void* vdev_cant_read; struct TYPE_23__** vdev_child; TYPE_1__ vdev_stat; } ;
typedef TYPE_5__ vdev_t ;
struct TYPE_21__ {int sav_count; TYPE_5__** sav_vdevs; } ;
struct TYPE_20__ {int sav_count; TYPE_5__** sav_vdevs; } ;
struct TYPE_24__ {TYPE_3__ spa_spares; TYPE_2__ spa_l2cache; TYPE_5__* spa_root_vdev; } ;
typedef TYPE_6__ spa_t ;
struct TYPE_22__ {TYPE_5__** vdev_child; int * vdev_ops; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int ESC_ZFS_VDEV_CLEAR ;
 int RW_WRITER ;
 scalar_t__ SCL_STATE_ALL ;
 int SPA_ASYNC_RESILVER ;
 int spa_async_request (TYPE_6__*,int ) ;
 scalar_t__ spa_config_held (TYPE_6__*,scalar_t__,int ) ;
 int spa_event_notify (TYPE_6__*,TYPE_5__*,int *,int ) ;
 int vdev_is_concrete (TYPE_5__*) ;
 int vdev_is_dead (TYPE_5__*) ;
 int vdev_readable (TYPE_5__*) ;
 int vdev_reopen (TYPE_5__*) ;
 int vdev_spare_ops ;
 int vdev_state_dirty (TYPE_5__*) ;
 scalar_t__ vdev_writeable (TYPE_5__*) ;

void
vdev_clear(spa_t *spa, vdev_t *vd)
{
 vdev_t *rvd = spa->spa_root_vdev;

 ASSERT(spa_config_held(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);

 if (vd == ((void*)0))
  vd = rvd;

 vd->vdev_stat.vs_read_errors = 0;
 vd->vdev_stat.vs_write_errors = 0;
 vd->vdev_stat.vs_checksum_errors = 0;

 for (int c = 0; c < vd->vdev_children; c++)
  vdev_clear(spa, vd->vdev_child[c]);

 if (vd == rvd) {
  for (int c = 0; c < spa->spa_l2cache.sav_count; c++)
   vdev_clear(spa, spa->spa_l2cache.sav_vdevs[c]);

  for (int c = 0; c < spa->spa_spares.sav_count; c++)
   vdev_clear(spa, spa->spa_spares.sav_vdevs[c]);
 }




 if (!vdev_is_concrete(vd))
  return;







 if (vd->vdev_faulted || vd->vdev_degraded ||
     !vdev_readable(vd) || !vdev_writeable(vd)) {






  vd->vdev_forcefault = B_TRUE;

  vd->vdev_faulted = vd->vdev_degraded = 0ULL;
  vd->vdev_cant_read = B_FALSE;
  vd->vdev_cant_write = B_FALSE;

  vdev_reopen(vd == rvd ? rvd : vd->vdev_top);

  vd->vdev_forcefault = B_FALSE;

  if (vd != rvd && vdev_writeable(vd->vdev_top))
   vdev_state_dirty(vd->vdev_top);

  if (vd->vdev_aux == ((void*)0) && !vdev_is_dead(vd))
   spa_async_request(spa, SPA_ASYNC_RESILVER);

  spa_event_notify(spa, vd, ((void*)0), ESC_ZFS_VDEV_CLEAR);
 }






 if (!vdev_is_dead(vd) && vd->vdev_parent != ((void*)0) &&
     vd->vdev_parent->vdev_ops == &vdev_spare_ops &&
     vd->vdev_parent->vdev_child[0] == vd)
  vd->vdev_unspare = B_TRUE;
}
