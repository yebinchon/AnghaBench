
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t zio_priority_t ;
struct TYPE_5__ {TYPE_1__* vq_class; } ;
typedef TYPE_2__ vdev_queue_t ;
typedef int avl_tree_t ;
struct TYPE_4__ {int vqc_queued_tree; } ;



__attribute__((used)) static inline avl_tree_t *
vdev_queue_class_tree(vdev_queue_t *vq, zio_priority_t p)
{
 return (&vq->vq_class[p].vqc_queued_tree);
}
