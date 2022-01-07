
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rc_count; } ;
struct TYPE_6__ {int rr_lock; int rr_cv; int * rr_writer; TYPE_2__ rr_linked_rcount; TYPE_2__ rr_anon_rcount; int rr_track_all; } ;
typedef TYPE_1__ rrwlock_t ;
typedef scalar_t__ int64_t ;


 int ASSERT (int) ;
 int DTRACE_PROBE (int ) ;
 int * curthread ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ rrn_find_and_remove (TYPE_1__*,void*) ;
 int zfs__rrwfastpath__exitmiss ;
 scalar_t__ zfs_refcount_is_zero (TYPE_2__*) ;
 scalar_t__ zfs_refcount_remove (TYPE_2__*,void*) ;

void
rrw_exit(rrwlock_t *rrl, void *tag)
{
 mutex_enter(&rrl->rr_lock);
 ASSERT(!zfs_refcount_is_zero(&rrl->rr_anon_rcount) ||
     !zfs_refcount_is_zero(&rrl->rr_linked_rcount) ||
     rrl->rr_writer != ((void*)0));

 if (rrl->rr_writer == ((void*)0)) {
  int64_t count;
  if (rrn_find_and_remove(rrl, tag)) {
   count = zfs_refcount_remove(
       &rrl->rr_linked_rcount, tag);
  } else {
   ASSERT(!rrl->rr_track_all);
   count = zfs_refcount_remove(&rrl->rr_anon_rcount, tag);
  }
  if (count == 0)
   cv_broadcast(&rrl->rr_cv);
 } else {
  ASSERT(rrl->rr_writer == curthread);
  ASSERT(zfs_refcount_is_zero(&rrl->rr_anon_rcount) &&
      zfs_refcount_is_zero(&rrl->rr_linked_rcount));
  rrl->rr_writer = ((void*)0);
  cv_broadcast(&rrl->rr_cv);
 }
 mutex_exit(&rrl->rr_lock);
}
