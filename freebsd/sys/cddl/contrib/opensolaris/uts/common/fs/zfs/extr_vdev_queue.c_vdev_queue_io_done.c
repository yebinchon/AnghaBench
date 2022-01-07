
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ io_done; TYPE_1__* io_vd; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_14__ {int vq_lock; int vq_io_complete_ts; } ;
typedef TYPE_3__ vdev_queue_t ;
struct TYPE_12__ {TYPE_3__ vdev_queue; } ;


 int gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ vdev_queue_agg_io_done ;
 TYPE_2__* vdev_queue_io_to_issue (TYPE_3__*) ;
 int vdev_queue_pending_remove (TYPE_3__*,TYPE_2__*) ;
 int zio_execute (TYPE_2__*) ;
 int zio_nowait (TYPE_2__*) ;
 int zio_vdev_io_reissue (TYPE_2__*) ;

void
vdev_queue_io_done(zio_t *zio)
{
 vdev_queue_t *vq = &zio->io_vd->vdev_queue;
 zio_t *nio;

 mutex_enter(&vq->vq_lock);

 vdev_queue_pending_remove(vq, zio);

 vq->vq_io_complete_ts = gethrtime();

 while ((nio = vdev_queue_io_to_issue(vq)) != ((void*)0)) {
  mutex_exit(&vq->vq_lock);
  if (nio->io_done == vdev_queue_agg_io_done) {
   zio_nowait(nio);
  } else {
   zio_vdev_io_reissue(nio);
   zio_execute(nio);
  }
  mutex_enter(&vq->vq_lock);
 }

 mutex_exit(&vq->vq_lock);
}
