
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ io_size; scalar_t__ io_offset; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_6__ {scalar_t__ vq_lastoffset; } ;
struct TYPE_8__ {TYPE_1__ vdev_queue; } ;
typedef TYPE_3__ vdev_t ;



void
vdev_queue_register_lastoffset(vdev_t *vd, zio_t *zio)
{
 vd->vdev_queue.vq_lastoffset = zio->io_offset + zio->io_size;
}
