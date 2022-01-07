
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t zio_priority_t ;
struct TYPE_8__ {TYPE_1__* vq_class; int vq_active_tree; int vq_lock; TYPE_2__* vq_vdev; } ;
typedef TYPE_3__ vdev_queue_t ;
typedef int spa_t ;
struct TYPE_7__ {int * vdev_spa; } ;
struct TYPE_6__ {scalar_t__ vqc_active; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 size_t ZIO_PRIORITY_NUM_QUEUEABLE ;
 scalar_t__ avl_numnodes (int *) ;
 scalar_t__ vdev_queue_class_max_active (int *,size_t) ;
 scalar_t__ vdev_queue_class_min_active (size_t) ;
 int * vdev_queue_class_tree (TYPE_3__*,size_t) ;
 scalar_t__ zfs_vdev_max_active ;

__attribute__((used)) static zio_priority_t
vdev_queue_class_to_issue(vdev_queue_t *vq)
{
 spa_t *spa = vq->vq_vdev->vdev_spa;
 zio_priority_t p;

 ASSERT(MUTEX_HELD(&vq->vq_lock));

 if (avl_numnodes(&vq->vq_active_tree) >= zfs_vdev_max_active)
  return (ZIO_PRIORITY_NUM_QUEUEABLE);


 for (p = 0; p < ZIO_PRIORITY_NUM_QUEUEABLE; p++) {
  if (avl_numnodes(vdev_queue_class_tree(vq, p)) > 0 &&
      vq->vq_class[p].vqc_active <
      vdev_queue_class_min_active(p))
   return (p);
 }





 for (p = 0; p < ZIO_PRIORITY_NUM_QUEUEABLE; p++) {
  if (avl_numnodes(vdev_queue_class_tree(vq, p)) > 0 &&
      vq->vq_class[p].vqc_active <
      vdev_queue_class_max_active(spa, p))
   return (p);
 }


 return (ZIO_PRIORITY_NUM_QUEUEABLE);
}
