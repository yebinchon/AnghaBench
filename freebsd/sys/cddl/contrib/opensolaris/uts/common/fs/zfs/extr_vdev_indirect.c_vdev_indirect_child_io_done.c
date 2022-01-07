
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * io_abd; int io_lock; int io_error; struct TYPE_3__* io_private; } ;
typedef TYPE_1__ zio_t ;


 int abd_put (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zio_worst_error (int ,int ) ;

__attribute__((used)) static void
vdev_indirect_child_io_done(zio_t *zio)
{
 zio_t *pio = zio->io_private;

 mutex_enter(&pio->io_lock);
 pio->io_error = zio_worst_error(pio->io_error, zio->io_error);
 mutex_exit(&pio->io_lock);




 abd_put(zio->io_abd);
}
