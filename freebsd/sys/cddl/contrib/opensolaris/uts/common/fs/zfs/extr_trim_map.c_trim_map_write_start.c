
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int io_size; TYPE_2__* io_vd; void* io_offset; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_14__ {scalar_t__ vdev_notrim; TYPE_4__* vdev_trimmap; } ;
typedef TYPE_2__ vdev_t ;
typedef void* uint64_t ;
struct TYPE_15__ {void* ts_end; void* ts_start; } ;
typedef TYPE_3__ trim_seg_t ;
struct TYPE_16__ {int tm_lock; int tm_inflight_writes; int tm_queued_frees; int tm_pending_writes; int tm_inflight_frees; } ;
typedef TYPE_4__ trim_map_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 void* TRIM_ZIO_END (TYPE_2__*,void*,int ) ;
 int avl_add (int *,TYPE_1__*) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int list_insert_tail (int *,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int trim_map_segment_remove (TYPE_4__*,TYPE_3__*,void*,void*) ;
 int zfs_trim_enabled ;

boolean_t
trim_map_write_start(zio_t *zio)
{
 vdev_t *vd = zio->io_vd;
 trim_map_t *tm = vd->vdev_trimmap;
 trim_seg_t tsearch, *ts;
 boolean_t left_over, right_over;
 uint64_t start, end;

 if (!zfs_trim_enabled || vd->vdev_notrim || tm == ((void*)0))
  return (B_TRUE);

 start = zio->io_offset;
 end = TRIM_ZIO_END(zio->io_vd, start, zio->io_size);
 tsearch.ts_start = start;
 tsearch.ts_end = end;

 mutex_enter(&tm->tm_lock);




 ts = avl_find(&tm->tm_inflight_frees, &tsearch, ((void*)0));
 if (ts != ((void*)0)) {
  list_insert_tail(&tm->tm_pending_writes, zio);
  mutex_exit(&tm->tm_lock);
  return (B_FALSE);
 }




 while ((ts = avl_find(&tm->tm_queued_frees, &tsearch, ((void*)0))) != ((void*)0)) {
  trim_map_segment_remove(tm, ts, start, end);
 }

 avl_add(&tm->tm_inflight_writes, zio);

 mutex_exit(&tm->tm_lock);

 return (B_TRUE);
}
