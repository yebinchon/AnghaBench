
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* v_phys_read ) (TYPE_1__*,int ,int ,void*,size_t) ;int spa; int v_read_priv; } ;
typedef TYPE_1__ vdev_t ;
typedef int off_t ;
typedef int blkptr_t ;


 size_t BP_GET_PSIZE (int const*) ;
 int EIO ;
 int stub1 (TYPE_1__*,int ,int ,void*,size_t) ;
 int zio_checksum_verify (int ,int const*,void*) ;

__attribute__((used)) static int
vdev_read_phys(vdev_t *vdev, const blkptr_t *bp, void *buf,
    off_t offset, size_t size)
{
 size_t psize;
 int rc;

 if (!vdev->v_phys_read)
  return (EIO);

 if (bp) {
  psize = BP_GET_PSIZE(bp);
 } else {
  psize = size;
 }


 rc = vdev->v_phys_read(vdev, vdev->v_read_priv, offset, buf, psize);
 if (rc)
  return (rc);
 if (bp != ((void*)0))
  return (zio_checksum_verify(vdev->spa, bp, buf));

 return (0);
}
