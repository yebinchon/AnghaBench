
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_error; } ;
typedef TYPE_1__ zio_t ;


 int zio_interrupt (TYPE_1__*) ;

__attribute__((used)) static void
vdev_disk_ioctl_done(void *zio_arg, int error)
{
 zio_t *zio = zio_arg;

 zio->io_error = error;

 zio_interrupt(zio);
}
