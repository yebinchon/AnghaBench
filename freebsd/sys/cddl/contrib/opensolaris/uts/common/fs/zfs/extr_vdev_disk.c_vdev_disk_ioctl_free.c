
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_vsd; } ;
typedef TYPE_1__ zio_t ;
struct dk_callback {int dummy; } ;


 int kmem_free (int ,int) ;

__attribute__((used)) static void
vdev_disk_ioctl_free(zio_t *zio)
{
 kmem_free(zio->io_vsd, sizeof (struct dk_callback));
}
