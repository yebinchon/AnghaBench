
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zl_lock; int zl_lwb_list; } ;
typedef TYPE_1__ zilog_t ;
typedef int zil_chain_t ;
typedef int uint64_t ;
struct TYPE_8__ {int lwb_nused; int lwb_waiters; int lwb_vdev_tree; int lwb_vdev_lock; void* lwb_sz; scalar_t__ lwb_issued_timestamp; int * lwb_tx; int * lwb_root_zio; int * lwb_write_zio; int lwb_max_txg; int lwb_buf; int lwb_state; int lwb_slog; int lwb_blk; TYPE_1__* lwb_zilog; } ;
typedef TYPE_2__ lwb_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_GET_CHECKSUM (int *) ;
 void* BP_GET_LSIZE (int *) ;
 int KM_SLEEP ;
 int LWB_STATE_CLOSED ;
 int MUTEX_HELD (int *) ;
 int VERIFY (int ) ;
 scalar_t__ ZIO_CHECKSUM_ZILOG2 ;
 int avl_is_empty (int *) ;
 TYPE_2__* kmem_cache_alloc (int ,int ) ;
 int list_insert_tail (int *,TYPE_2__*) ;
 int list_is_empty (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zil_lwb_cache ;
 int zio_buf_alloc (void*) ;

__attribute__((used)) static lwb_t *
zil_alloc_lwb(zilog_t *zilog, blkptr_t *bp, boolean_t slog, uint64_t txg)
{
 lwb_t *lwb;

 lwb = kmem_cache_alloc(zil_lwb_cache, KM_SLEEP);
 lwb->lwb_zilog = zilog;
 lwb->lwb_blk = *bp;
 lwb->lwb_slog = slog;
 lwb->lwb_state = LWB_STATE_CLOSED;
 lwb->lwb_buf = zio_buf_alloc(BP_GET_LSIZE(bp));
 lwb->lwb_max_txg = txg;
 lwb->lwb_write_zio = ((void*)0);
 lwb->lwb_root_zio = ((void*)0);
 lwb->lwb_tx = ((void*)0);
 lwb->lwb_issued_timestamp = 0;
 if (BP_GET_CHECKSUM(bp) == ZIO_CHECKSUM_ZILOG2) {
  lwb->lwb_nused = sizeof (zil_chain_t);
  lwb->lwb_sz = BP_GET_LSIZE(bp);
 } else {
  lwb->lwb_nused = 0;
  lwb->lwb_sz = BP_GET_LSIZE(bp) - sizeof (zil_chain_t);
 }

 mutex_enter(&zilog->zl_lock);
 list_insert_tail(&zilog->zl_lwb_list, lwb);
 mutex_exit(&zilog->zl_lock);

 ASSERT(!MUTEX_HELD(&lwb->lwb_vdev_lock));
 ASSERT(avl_is_empty(&lwb->lwb_vdev_tree));
 VERIFY(list_is_empty(&lwb->lwb_waiters));

 return (lwb);
}
