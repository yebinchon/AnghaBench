
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ io_size; int io_abd; TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_5__ {int vca_lock; int vca_cv; int vca_outstanding_bytes; } ;
typedef TYPE_2__ vdev_copy_arg_t ;


 int abd_free (int ) ;
 int cv_signal (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
spa_vdev_copy_segment_write_done(zio_t *zio)
{
 vdev_copy_arg_t *vca = zio->io_private;

 abd_free(zio->io_abd);

 mutex_enter(&vca->vca_lock);
 vca->vca_outstanding_bytes -= zio->io_size;
 cv_signal(&vca->vca_cv);
 mutex_exit(&vca->vca_lock);
}
