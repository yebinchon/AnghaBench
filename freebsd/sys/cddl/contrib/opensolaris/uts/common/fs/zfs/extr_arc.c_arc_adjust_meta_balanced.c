
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef size_t arc_buf_contents_t ;
struct TYPE_6__ {int * arcs_esize; } ;


 size_t ARC_BUFC_DATA ;
 size_t ARC_BUFC_METADATA ;
 int MAX (int ,int ) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ arc_adjust_impl (TYPE_1__*,int ,scalar_t__,size_t) ;
 scalar_t__ arc_meta_limit ;
 TYPE_1__* arc_mfu ;
 TYPE_1__* arc_mfu_ghost ;
 TYPE_1__* arc_mru ;
 TYPE_1__* arc_mru_ghost ;
 int arc_prune_async (scalar_t__) ;
 int zfs_arc_meta_adjust_restarts ;
 scalar_t__ zfs_arc_meta_prune ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static uint64_t
arc_adjust_meta_balanced(uint64_t meta_used)
{
 int64_t delta, prune = 0, adjustmnt;
 uint64_t total_evicted = 0;
 arc_buf_contents_t type = ARC_BUFC_DATA;
 int restarts = MAX(zfs_arc_meta_adjust_restarts, 0);

restart:
 adjustmnt = meta_used - arc_meta_limit;

 if (adjustmnt > 0 &&
     zfs_refcount_count(&arc_mru->arcs_esize[type]) > 0) {
  delta = MIN(zfs_refcount_count(&arc_mru->arcs_esize[type]),
      adjustmnt);
  total_evicted += arc_adjust_impl(arc_mru, 0, delta, type);
  adjustmnt -= delta;
 }
 if (adjustmnt > 0 &&
     zfs_refcount_count(&arc_mfu->arcs_esize[type]) > 0) {
  delta = MIN(zfs_refcount_count(&arc_mfu->arcs_esize[type]),
      adjustmnt);
  total_evicted += arc_adjust_impl(arc_mfu, 0, delta, type);
 }

 adjustmnt = meta_used - arc_meta_limit;

 if (adjustmnt > 0 &&
     zfs_refcount_count(&arc_mru_ghost->arcs_esize[type]) > 0) {
  delta = MIN(adjustmnt,
      zfs_refcount_count(&arc_mru_ghost->arcs_esize[type]));
  total_evicted += arc_adjust_impl(arc_mru_ghost, 0, delta, type);
  adjustmnt -= delta;
 }

 if (adjustmnt > 0 &&
     zfs_refcount_count(&arc_mfu_ghost->arcs_esize[type]) > 0) {
  delta = MIN(adjustmnt,
      zfs_refcount_count(&arc_mfu_ghost->arcs_esize[type]));
  total_evicted += arc_adjust_impl(arc_mfu_ghost, 0, delta, type);
 }
 if (meta_used > arc_meta_limit) {
  if (type == ARC_BUFC_DATA) {
   type = ARC_BUFC_METADATA;
  } else {
   type = ARC_BUFC_DATA;

   if (zfs_arc_meta_prune) {
    prune += zfs_arc_meta_prune;
    arc_prune_async(prune);
   }
  }

  if (restarts > 0) {
   restarts--;
   goto restart;
  }
 }
 return (total_evicted);
}
