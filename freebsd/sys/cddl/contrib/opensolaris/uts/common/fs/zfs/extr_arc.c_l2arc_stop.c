
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FWRITE ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int l2arc_feed_thr_cv ;
 int l2arc_feed_thr_lock ;
 int l2arc_thread_exit ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_mode_global ;

void
l2arc_stop(void)
{
 if (!(spa_mode_global & FWRITE))
  return;

 mutex_enter(&l2arc_feed_thr_lock);
 cv_signal(&l2arc_feed_thr_cv);
 l2arc_thread_exit = 1;
 while (l2arc_thread_exit != 0)
  cv_wait(&l2arc_feed_thr_cv, &l2arc_feed_thr_lock);
 mutex_exit(&l2arc_feed_thr_lock);
}
