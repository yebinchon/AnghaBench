
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int range_seg_t ;
struct TYPE_6__ {scalar_t__ scn_clearing; scalar_t__ scn_checkpointing; int scn_is_sorted; } ;
typedef TYPE_2__ dsl_scan_t ;
struct TYPE_7__ {int q_exts_by_size; int q_exts_by_addr; TYPE_1__* q_vd; TYPE_2__* q_scn; } ;
typedef TYPE_3__ dsl_scan_io_queue_t ;
struct TYPE_5__ {int vdev_scan_io_queue_lock; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int const* avl_first (int *) ;
 int const* range_tree_first (int ) ;
 int zfs_scan_issue_strategy ;

__attribute__((used)) static const range_seg_t *
scan_io_queue_fetch_ext(dsl_scan_io_queue_t *queue)
{
 dsl_scan_t *scn = queue->q_scn;

 ASSERT(MUTEX_HELD(&queue->q_vd->vdev_scan_io_queue_lock));
 ASSERT(scn->scn_is_sorted);


 if (scn->scn_checkpointing || scn->scn_clearing) {
  if (zfs_scan_issue_strategy == 1) {
   return (range_tree_first(queue->q_exts_by_addr));
  } else if (zfs_scan_issue_strategy == 2) {
   return (avl_first(&queue->q_exts_by_size));
  }
 }
 if (scn->scn_checkpointing) {
  return (range_tree_first(queue->q_exts_by_addr));
 } else if (scn->scn_clearing) {
  return (avl_first(&queue->q_exts_by_size));
 } else {
  return (((void*)0));
 }
}
