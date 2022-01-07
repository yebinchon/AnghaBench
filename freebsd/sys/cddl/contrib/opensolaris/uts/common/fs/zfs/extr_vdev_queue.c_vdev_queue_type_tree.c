
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zio_type_t ;
struct TYPE_3__ {int vq_write_offset_tree; int vq_read_offset_tree; } ;
typedef TYPE_1__ vdev_queue_t ;
typedef int avl_tree_t ;


 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_WRITE ;

__attribute__((used)) static inline avl_tree_t *
vdev_queue_type_tree(vdev_queue_t *vq, zio_type_t t)
{
 if (t == ZIO_TYPE_READ)
  return (&vq->vq_read_offset_tree);
 else if (t == ZIO_TYPE_WRITE)
  return (&vq->vq_write_offset_tree);
 else
  return (((void*)0));
}
