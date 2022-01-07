
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int io_flags; int io_error; scalar_t__ io_type; scalar_t__ io_priority; int io_stage; scalar_t__ io_cmd; scalar_t__ io_child_type; int io_logical; int (* io_physdone ) (int ) ;int io_pipeline; int io_size; int * io_vsd; TYPE_1__* io_vsd_ops; int io_spa; TYPE_4__* io_vd; } ;
typedef TYPE_3__ zio_t ;
struct TYPE_17__ {TYPE_2__* vdev_ops; void* vdev_nowritecache; void* vdev_cant_write; } ;
typedef TYPE_4__ vdev_t ;
struct TYPE_15__ {scalar_t__ vdev_op_leaf; } ;
struct TYPE_14__ {int (* vsd_free ) (TYPE_3__*) ;} ;


 int ASSERT (int) ;
 void* B_TRUE ;
 scalar_t__ DKIOCFLUSHWRITECACHE ;
 int EIO ;
 int ENOTSUP ;
 int ENOTTY ;
 int ENXIO ;

 int SCL_ZIO ;
 int SET_ERROR (int) ;
 scalar_t__ ZIO_CHILD_VDEV ;
 int ZIO_CHILD_VDEV_BIT ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_FLAG_DELEGATED ;
 int ZIO_FLAG_DONT_AGGREGATE ;
 int ZIO_FLAG_DONT_CACHE ;
 int ZIO_FLAG_DONT_QUEUE ;
 int ZIO_FLAG_DONT_RETRY ;
 int ZIO_FLAG_IO_BYPASS ;
 int ZIO_FLAG_IO_RETRY ;
 int ZIO_INTERLOCK_PIPELINE ;
 scalar_t__ ZIO_PRIORITY_NOW ;
 int ZIO_STAGE_VDEV_IO_START ;
 int ZIO_TASKQ_ISSUE ;
 int ZIO_TRIM_STAT_BUMP (int ) ;
 int ZIO_TRIM_STAT_INCR (int ,int ) ;
 scalar_t__ ZIO_TYPE_FREE ;
 scalar_t__ ZIO_TYPE_IOCTL ;
 scalar_t__ ZIO_TYPE_WRITE ;
 int ZIO_WAIT_DONE ;
 int bytes ;
 int failed ;
 int spa_config_exit (int ,int ,TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (int ) ;
 int success ;
 int unsupported ;
 int vdev_accessible (TYPE_4__*,TYPE_3__*) ;
 int zio_handle_fault_injection (TYPE_3__*,int ) ;
 scalar_t__ zio_injection_enabled ;
 int zio_requeue_io_start_cut_in_line ;
 int zio_taskq_dispatch (TYPE_3__*,int ,int ) ;
 scalar_t__ zio_wait_for_children (TYPE_3__*,int ,int ) ;

__attribute__((used)) static zio_t *
zio_vdev_io_assess(zio_t *zio)
{
 vdev_t *vd = zio->io_vd;

 if (zio_wait_for_children(zio, ZIO_CHILD_VDEV_BIT, ZIO_WAIT_DONE)) {
  return (((void*)0));
 }

 if (vd == ((void*)0) && !(zio->io_flags & ZIO_FLAG_CONFIG_WRITER))
  spa_config_exit(zio->io_spa, SCL_ZIO, zio);

 if (zio->io_vsd != ((void*)0)) {
  zio->io_vsd_ops->vsd_free(zio);
  zio->io_vsd = ((void*)0);
 }

 if (zio_injection_enabled && zio->io_error == 0)
  zio->io_error = zio_handle_fault_injection(zio, EIO);

 if (zio->io_type == ZIO_TYPE_FREE &&
     zio->io_priority != ZIO_PRIORITY_NOW) {
  switch (zio->io_error) {
  case 0:
   ZIO_TRIM_STAT_INCR(bytes, zio->io_size);
   ZIO_TRIM_STAT_BUMP(success);
   break;
  case 128:
   ZIO_TRIM_STAT_BUMP(unsupported);
   break;
  default:
   ZIO_TRIM_STAT_BUMP(failed);
   break;
  }
 }







 if (zio->io_error && vd == ((void*)0) &&
     !(zio->io_flags & (ZIO_FLAG_DONT_RETRY | ZIO_FLAG_IO_RETRY))) {
  ASSERT(!(zio->io_flags & ZIO_FLAG_DONT_QUEUE));
  ASSERT(!(zio->io_flags & ZIO_FLAG_IO_BYPASS));
  zio->io_error = 0;
  zio->io_flags |= ZIO_FLAG_IO_RETRY |
      ZIO_FLAG_DONT_CACHE | ZIO_FLAG_DONT_AGGREGATE;
  zio->io_stage = ZIO_STAGE_VDEV_IO_START >> 1;
  zio_taskq_dispatch(zio, ZIO_TASKQ_ISSUE,
      zio_requeue_io_start_cut_in_line);
  return (((void*)0));
 }





 if (zio->io_error && vd != ((void*)0) && vd->vdev_ops->vdev_op_leaf &&
     !vdev_accessible(vd, zio))
  zio->io_error = SET_ERROR(ENXIO);





 if (zio->io_error == ENXIO && zio->io_type == ZIO_TYPE_WRITE &&
     vd != ((void*)0) && !vd->vdev_ops->vdev_op_leaf) {
  vd->vdev_cant_write = B_TRUE;
 }






 if ((zio->io_error == ENOTSUP || zio->io_error == ENOTTY) &&
     zio->io_type == ZIO_TYPE_IOCTL &&
     zio->io_cmd == DKIOCFLUSHWRITECACHE && vd != ((void*)0))
  vd->vdev_nowritecache = B_TRUE;

 if (zio->io_error)
  zio->io_pipeline = ZIO_INTERLOCK_PIPELINE;

 if (vd != ((void*)0) && vd->vdev_ops->vdev_op_leaf &&
     zio->io_physdone != ((void*)0)) {
  ASSERT(!(zio->io_flags & ZIO_FLAG_DELEGATED));
  ASSERT(zio->io_child_type == ZIO_CHILD_VDEV);
  zio->io_physdone(zio->io_logical);
 }

 return (zio);
}
