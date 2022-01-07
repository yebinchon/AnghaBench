
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int sio_offset; int sio_asize; } ;
typedef TYPE_2__ scan_io_t ;
typedef int int64_t ;
struct TYPE_12__ {int scn_bytes_pending; } ;
typedef TYPE_3__ dsl_scan_t ;
struct TYPE_13__ {int q_exts_by_addr; int q_sios_by_addr; TYPE_1__* q_vd; TYPE_3__* q_scn; } ;
typedef TYPE_4__ dsl_scan_io_queue_t ;
typedef int avl_index_t ;
struct TYPE_10__ {int vdev_scan_io_queue_lock; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int atomic_add_64 (int *,int ) ;
 int * avl_find (int *,TYPE_2__*,int *) ;
 int avl_insert (int *,TYPE_2__*,int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int range_tree_add (int ,int ,int ) ;

__attribute__((used)) static void
scan_io_queue_insert_impl(dsl_scan_io_queue_t *queue, scan_io_t *sio)
{
 avl_index_t idx;
 int64_t asize = sio->sio_asize;
 dsl_scan_t *scn = queue->q_scn;

 ASSERT(MUTEX_HELD(&queue->q_vd->vdev_scan_io_queue_lock));

 if (avl_find(&queue->q_sios_by_addr, sio, &idx) != ((void*)0)) {

  atomic_add_64(&scn->scn_bytes_pending, -asize);
  kmem_free(sio, sizeof (*sio));
  return;
 }
 avl_insert(&queue->q_sios_by_addr, sio, idx);
 range_tree_add(queue->q_exts_by_addr, sio->sio_offset, asize);
}
