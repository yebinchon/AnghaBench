
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* io_vsd; } ;
typedef TYPE_1__ zio_t ;
typedef int zio_bad_cksum_t ;
struct TYPE_10__ {int iv_split_block; scalar_t__ iv_reconstruct; } ;
typedef TYPE_2__ indirect_vsd_t ;


 int vdev_indirect_read_all (TYPE_1__*) ;
 int vdev_indirect_reconstruct_io_done (TYPE_1__*) ;
 int zio_checksum_error (TYPE_1__*,int *) ;
 int zio_checksum_verified (TYPE_1__*) ;
 int zio_vdev_io_redone (TYPE_1__*) ;

__attribute__((used)) static void
vdev_indirect_io_done(zio_t *zio)
{
 indirect_vsd_t *iv = zio->io_vsd;

 if (iv->iv_reconstruct) {





  vdev_indirect_reconstruct_io_done(zio);
  return;
 }

 if (!iv->iv_split_block) {




  return;
 }

 zio_bad_cksum_t zbc;
 int ret = zio_checksum_error(zio, &zbc);
 if (ret == 0) {
  zio_checksum_verified(zio);
  return;
 }






 vdev_indirect_read_all(zio);

 zio_vdev_io_redone(zio);
}
