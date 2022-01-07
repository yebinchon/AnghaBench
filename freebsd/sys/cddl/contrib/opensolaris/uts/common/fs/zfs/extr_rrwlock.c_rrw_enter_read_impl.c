
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int rc_count; } ;
struct TYPE_8__ {int rr_lock; int * rr_writer; TYPE_2__ rr_anon_rcount; TYPE_2__ rr_linked_rcount; scalar_t__ rr_track_all; scalar_t__ rr_writer_wanted; int rr_cv; } ;
typedef TYPE_1__ rrwlock_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int DTRACE_PROBE (int ) ;
 int * curthread ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rrn_add (TYPE_1__*,void*) ;
 int * rrn_find (TYPE_1__*) ;
 int zfs__rrwfastpath__rdmiss ;
 int zfs_refcount_add (TYPE_2__*,void*) ;
 scalar_t__ zfs_refcount_count (TYPE_2__*) ;
 scalar_t__ zfs_refcount_is_zero (TYPE_2__*) ;

__attribute__((used)) static void
rrw_enter_read_impl(rrwlock_t *rrl, boolean_t prio, void *tag)
{
 mutex_enter(&rrl->rr_lock);
 ASSERT(rrl->rr_writer != curthread);
 ASSERT(zfs_refcount_count(&rrl->rr_anon_rcount) >= 0);

 while (rrl->rr_writer != ((void*)0) || (rrl->rr_writer_wanted &&
     zfs_refcount_is_zero(&rrl->rr_anon_rcount) && !prio &&
     rrn_find(rrl) == ((void*)0)))
  cv_wait(&rrl->rr_cv, &rrl->rr_lock);

 if (rrl->rr_writer_wanted || rrl->rr_track_all) {

  rrn_add(rrl, tag);
  (void) zfs_refcount_add(&rrl->rr_linked_rcount, tag);
 } else {
  (void) zfs_refcount_add(&rrl->rr_anon_rcount, tag);
 }
 ASSERT(rrl->rr_writer == ((void*)0));
 mutex_exit(&rrl->rr_lock);
}
