
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ io_error; int io_spa; TYPE_2__* io_vd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_7__ {void* vdev_delayed_close; void* vdev_remove_wanted; TYPE_3__* vdev_tsd; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_8__ {int vd_lh; } ;
typedef TYPE_3__ vdev_disk_t ;


 void* B_TRUE ;
 int DKIOCSTATE ;
 int DKIO_INSERTED ;
 int DKIO_NONE ;
 scalar_t__ EIO ;
 int FKIOCTL ;
 int SPA_ASYNC_REMOVE ;
 int kcred ;
 scalar_t__ ldi_ioctl (int ,int ,intptr_t,int ,int ,int *) ;
 int spa_async_request (int ,int ) ;
 int zfs_post_remove (int ,TYPE_2__*) ;

__attribute__((used)) static void
vdev_disk_io_done(zio_t *zio)
{
 vdev_t *vd = zio->io_vd;







 if (zio->io_error == EIO && !vd->vdev_remove_wanted) {
  vdev_disk_t *dvd = vd->vdev_tsd;
  int state = DKIO_NONE;

  if (ldi_ioctl(dvd->vd_lh, DKIOCSTATE, (intptr_t)&state,
      FKIOCTL, kcred, ((void*)0)) == 0 && state != DKIO_INSERTED) {






   zfs_post_remove(zio->io_spa, vd);
   vd->vdev_remove_wanted = B_TRUE;
   spa_async_request(zio->io_spa, SPA_ASYNC_REMOVE);
  } else if (!vd->vdev_delayed_close) {
   vd->vdev_delayed_close = B_TRUE;
  }
 }
}
