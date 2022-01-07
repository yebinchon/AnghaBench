
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rr_track_all; int rr_writer_wanted; int rr_linked_rcount; int rr_anon_rcount; int * rr_writer; int rr_cv; int rr_lock; } ;
typedef TYPE_1__ rrwlock_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int cv_init (int *,int *,int ,int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfs_refcount_create (int *) ;

void
rrw_init(rrwlock_t *rrl, boolean_t track_all)
{
 mutex_init(&rrl->rr_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&rrl->rr_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 rrl->rr_writer = ((void*)0);
 zfs_refcount_create(&rrl->rr_anon_rcount);
 zfs_refcount_create(&rrl->rr_linked_rcount);
 rrl->rr_writer_wanted = B_FALSE;
 rrl->rr_track_all = track_all;
}
