
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_error; TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_5__ {int mc_tried; scalar_t__ mc_skipped; int mc_error; } ;
typedef TYPE_2__ mirror_child_t ;



__attribute__((used)) static void
vdev_mirror_child_done(zio_t *zio)
{
 mirror_child_t *mc = zio->io_private;

 mc->mc_error = zio->io_error;
 mc->mc_tried = 1;
 mc->mc_skipped = 0;
}
