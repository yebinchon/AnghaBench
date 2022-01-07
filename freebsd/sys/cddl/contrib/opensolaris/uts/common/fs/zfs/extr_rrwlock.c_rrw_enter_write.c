
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rr_lock; int * rr_writer; int rr_writer_wanted; int rr_cv; int rr_linked_rcount; int rr_anon_rcount; } ;
typedef TYPE_1__ rrwlock_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int * curthread ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zfs_refcount_count (int *) ;

void
rrw_enter_write(rrwlock_t *rrl)
{
 mutex_enter(&rrl->rr_lock);
 ASSERT(rrl->rr_writer != curthread);

 while (zfs_refcount_count(&rrl->rr_anon_rcount) > 0 ||
     zfs_refcount_count(&rrl->rr_linked_rcount) > 0 ||
     rrl->rr_writer != ((void*)0)) {
  rrl->rr_writer_wanted = B_TRUE;
  cv_wait(&rrl->rr_cv, &rrl->rr_lock);
 }
 rrl->rr_writer_wanted = B_FALSE;
 rrl->rr_writer = curthread;
 mutex_exit(&rrl->rr_lock);
}
