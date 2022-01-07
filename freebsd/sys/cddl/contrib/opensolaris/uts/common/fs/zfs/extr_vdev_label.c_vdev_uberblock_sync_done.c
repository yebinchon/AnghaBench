
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ io_error; TYPE_2__* io_vd; int * io_private; } ;
typedef TYPE_3__ zio_t ;
typedef int uint64_t ;
struct TYPE_6__ {TYPE_1__* vdev_top; } ;
struct TYPE_5__ {scalar_t__ vdev_ms_array; } ;


 int atomic_inc_64 (int *) ;

__attribute__((used)) static void
vdev_uberblock_sync_done(zio_t *zio)
{
 uint64_t *good_writes = zio->io_private;

 if (zio->io_error == 0 && zio->io_vd->vdev_top->vdev_ms_array != 0)
  atomic_inc_64(good_writes);
}
