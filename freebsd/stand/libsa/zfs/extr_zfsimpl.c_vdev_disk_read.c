
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef scalar_t__ off_t ;
typedef int blkptr_t ;


 scalar_t__ VDEV_LABEL_START_SIZE ;
 int vdev_read_phys (int *,int const*,void*,scalar_t__,size_t) ;

__attribute__((used)) static int
vdev_disk_read(vdev_t *vdev, const blkptr_t *bp, void *buf,
    off_t offset, size_t bytes)
{

 return (vdev_read_phys(vdev, bp, buf,
  offset + VDEV_LABEL_START_SIZE, bytes));
}
