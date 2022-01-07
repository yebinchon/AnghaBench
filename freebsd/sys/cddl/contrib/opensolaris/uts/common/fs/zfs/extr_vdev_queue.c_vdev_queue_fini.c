
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ zio_priority_t ;
struct TYPE_7__ {int vq_lock; int vq_active_tree; } ;
struct TYPE_6__ {TYPE_2__ vdev_queue; } ;
typedef TYPE_1__ vdev_t ;
typedef TYPE_2__ vdev_queue_t ;


 scalar_t__ ZIO_PRIORITY_NUM_QUEUEABLE ;
 int ZIO_TYPE_READ ;
 int ZIO_TYPE_WRITE ;
 int avl_destroy (int *) ;
 int mutex_destroy (int *) ;
 int * vdev_queue_class_tree (TYPE_2__*,scalar_t__) ;
 int * vdev_queue_type_tree (TYPE_2__*,int ) ;

void
vdev_queue_fini(vdev_t *vd)
{
 vdev_queue_t *vq = &vd->vdev_queue;

 for (zio_priority_t p = 0; p < ZIO_PRIORITY_NUM_QUEUEABLE; p++)
  avl_destroy(vdev_queue_class_tree(vq, p));
 avl_destroy(&vq->vq_active_tree);
 avl_destroy(vdev_queue_type_tree(vq, ZIO_TYPE_READ));
 avl_destroy(vdev_queue_type_tree(vq, ZIO_TYPE_WRITE));

 mutex_destroy(&vq->vq_lock);
}
