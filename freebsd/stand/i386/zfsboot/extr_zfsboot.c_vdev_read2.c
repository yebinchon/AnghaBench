
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int off_t ;


 int vdev_read (int *,void*,int ,void*,size_t) ;

__attribute__((used)) static int
vdev_read2(vdev_t *vdev, void *priv, off_t off, void *buf, size_t bytes)
{
 return vdev_read(vdev, priv, off, buf, bytes);
}
