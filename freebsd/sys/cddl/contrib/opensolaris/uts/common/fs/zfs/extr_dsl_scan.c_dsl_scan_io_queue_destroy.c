
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int q_zio_cv; int q_sios_by_addr; int q_exts_by_addr; scalar_t__ sio_asize; int sio_offset; TYPE_1__* q_vd; TYPE_3__* q_scn; } ;
typedef TYPE_2__ scan_io_t ;
typedef int int64_t ;
struct TYPE_11__ {int scn_bytes_pending; } ;
typedef TYPE_3__ dsl_scan_t ;
typedef TYPE_2__ dsl_scan_io_queue_t ;
struct TYPE_9__ {int vdev_scan_io_queue_lock; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int atomic_add_64 (int *,int ) ;
 int avl_destroy (int *) ;
 TYPE_2__* avl_destroy_nodes (int *,void**) ;
 int cv_destroy (int *) ;
 int kmem_free (TYPE_2__*,int) ;
 int range_tree_contains (int ,int ,scalar_t__) ;
 int range_tree_destroy (int ) ;
 int range_tree_vacate (int ,int *,TYPE_2__*) ;

void
dsl_scan_io_queue_destroy(dsl_scan_io_queue_t *queue)
{
 dsl_scan_t *scn = queue->q_scn;
 scan_io_t *sio;
 void *cookie = ((void*)0);
 int64_t bytes_dequeued = 0;

 ASSERT(MUTEX_HELD(&queue->q_vd->vdev_scan_io_queue_lock));

 while ((sio = avl_destroy_nodes(&queue->q_sios_by_addr, &cookie)) !=
     ((void*)0)) {
  ASSERT(range_tree_contains(queue->q_exts_by_addr,
      sio->sio_offset, sio->sio_asize));
  bytes_dequeued += sio->sio_asize;
  kmem_free(sio, sizeof (*sio));
 }

 atomic_add_64(&scn->scn_bytes_pending, -bytes_dequeued);
 range_tree_vacate(queue->q_exts_by_addr, ((void*)0), queue);
 range_tree_destroy(queue->q_exts_by_addr);
 avl_destroy(&queue->q_sios_by_addr);
 cv_destroy(&queue->q_zio_cv);

 kmem_free(queue, sizeof (*queue));
}
