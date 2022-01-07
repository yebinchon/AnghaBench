
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_14__ {scalar_t__ vdev_isl2cache; TYPE_1__* vdev_ops; TYPE_4__* vdev_trimmap; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ ts_end; scalar_t__ ts_start; } ;
typedef TYPE_3__ trim_seg_t ;
struct TYPE_16__ {int tm_pending; int tm_lock; int tm_inflight_frees; int tm_queued_frees; } ;
typedef TYPE_4__ trim_map_t ;
typedef int spa_t ;
typedef int int64_t ;
typedef int hrtime_t ;
struct TYPE_13__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 scalar_t__ MIN (int ,int ) ;
 int NANOSEC ;
 int P2ROUNDUP (int,int) ;
 int TRIM_MAP_REM (TYPE_4__*,TYPE_3__*) ;
 int TRIM_MAP_SEGS (scalar_t__) ;
 scalar_t__ UINT64_MAX ;
 int avl_add (int *,TYPE_3__*) ;
 int avl_remove (int *,TYPE_3__*) ;
 int gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_freeze_txg (int *) ;
 int spa_last_synced_txg (int *) ;
 TYPE_3__* trim_map_first (TYPE_4__*,scalar_t__,scalar_t__,int,int) ;
 int trim_timeout ;
 scalar_t__ trim_txg_delay ;
 int trim_vdev_max_pending ;
 int zio_nowait (int ) ;
 int zio_trim (int *,int *,TYPE_2__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
trim_map_vdev_commit(spa_t *spa, zio_t *zio, vdev_t *vd)
{
 trim_map_t *tm = vd->vdev_trimmap;
 trim_seg_t *ts;
 uint64_t size, offset, txgtarget, txgsafe;
 int64_t hard, soft;
 hrtime_t timelimit;

 ASSERT(vd->vdev_ops->vdev_op_leaf);

 if (tm == ((void*)0))
  return;

 timelimit = gethrtime() - (hrtime_t)trim_timeout * NANOSEC;
 if (vd->vdev_isl2cache) {
  txgsafe = UINT64_MAX;
  txgtarget = UINT64_MAX;
 } else {
  txgsafe = MIN(spa_last_synced_txg(spa), spa_freeze_txg(spa));
  if (txgsafe > trim_txg_delay)
   txgtarget = txgsafe - trim_txg_delay;
  else
   txgtarget = 0;
 }

 mutex_enter(&tm->tm_lock);
 hard = 0;
 if (tm->tm_pending > trim_vdev_max_pending)
  hard = (tm->tm_pending - trim_vdev_max_pending) / 4;
 soft = P2ROUNDUP(hard + tm->tm_pending / trim_timeout + 1, 64);

 while (soft > 0 &&
     (ts = trim_map_first(tm, txgtarget, txgsafe, timelimit, hard > 0))
     != ((void*)0)) {
  TRIM_MAP_REM(tm, ts);
  avl_remove(&tm->tm_queued_frees, ts);
  avl_add(&tm->tm_inflight_frees, ts);
  size = ts->ts_end - ts->ts_start;
  offset = ts->ts_start;





  mutex_exit(&tm->tm_lock);

  zio_nowait(zio_trim(zio, spa, vd, offset, size));

  soft -= TRIM_MAP_SEGS(size);
  hard -= TRIM_MAP_SEGS(size);
  mutex_enter(&tm->tm_lock);
 }
 mutex_exit(&tm->tm_lock);
}
