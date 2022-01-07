
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zthr_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ aggsum_compare (int *,int ) ;
 scalar_t__ arc_adjust () ;
 int arc_adjust_lock ;
 int arc_adjust_needed ;
 int arc_adjust_waiters_cv ;
 int arc_adjust_zthr ;
 int arc_c ;
 int arc_size ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zthr_iscancelled (int ) ;

__attribute__((used)) static void
arc_adjust_cb(void *arg, zthr_t *zthr)
{
 uint64_t evicted = 0;


 evicted = arc_adjust();
 mutex_enter(&arc_adjust_lock);
 arc_adjust_needed = !zthr_iscancelled(arc_adjust_zthr) &&
     evicted > 0 && aggsum_compare(&arc_size, arc_c) > 0;
 if (!arc_adjust_needed) {





  cv_broadcast(&arc_adjust_waiters_cv);
 }
 mutex_exit(&arc_adjust_lock);
}
