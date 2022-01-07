
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* vdev_trimmap; int vdev_spa; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_14__ {int tm_lock; int tm_head; int tm_pending_writes; int tm_inflight_writes; int tm_inflight_frees; int tm_queued_frees; } ;
typedef TYPE_3__ trim_seg_t ;
typedef TYPE_3__ trim_map_t ;
struct TYPE_12__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 int TRIM_MAP_REM (TYPE_3__*,TYPE_3__*) ;
 int avl_destroy (int *) ;
 int avl_remove (int *,TYPE_3__*) ;
 int kmem_free (TYPE_3__*,int) ;
 int list_destroy (int *) ;
 TYPE_3__* list_head (int *) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int trim_map_vdev_commit_done (int ,TYPE_2__*) ;
 int zfs_trim_enabled ;

void
trim_map_destroy(vdev_t *vd)
{
 trim_map_t *tm;
 trim_seg_t *ts;

 ASSERT(vd->vdev_ops->vdev_op_leaf);

 if (!zfs_trim_enabled)
  return;

 tm = vd->vdev_trimmap;
 if (tm == ((void*)0))
  return;






 trim_map_vdev_commit_done(vd->vdev_spa, vd);

 mutex_enter(&tm->tm_lock);
 while ((ts = list_head(&tm->tm_head)) != ((void*)0)) {
  avl_remove(&tm->tm_queued_frees, ts);
  TRIM_MAP_REM(tm, ts);
  kmem_free(ts, sizeof (*ts));
 }
 mutex_exit(&tm->tm_lock);

 avl_destroy(&tm->tm_queued_frees);
 avl_destroy(&tm->tm_inflight_frees);
 avl_destroy(&tm->tm_inflight_writes);
 list_destroy(&tm->tm_pending_writes);
 list_destroy(&tm->tm_head);
 mutex_destroy(&tm->tm_lock);
 kmem_free(tm, sizeof (*tm));
 vd->vdev_trimmap = ((void*)0);
}
