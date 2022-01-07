
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_stage; scalar_t__ io_error; } ;
typedef TYPE_1__ zio_t ;


 int ASSERT (int) ;
 int ZIO_STAGE_VDEV_IO_START ;

void
zio_vdev_io_reissue(zio_t *zio)
{
 ASSERT(zio->io_stage == ZIO_STAGE_VDEV_IO_START);
 ASSERT(zio->io_error == 0);

 zio->io_stage >>= 1;
}
