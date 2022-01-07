
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ arc_dnlc_evicts_arg ;
 int arc_dnlc_evicts_cv ;
 int arc_dnlc_evicts_lock ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dnlc_reduce_cache(void *arg)
{
 u_int percent;

 percent = (u_int)(uintptr_t)arg;
 mutex_enter(&arc_dnlc_evicts_lock);
 if (arc_dnlc_evicts_arg == 0) {
  arc_dnlc_evicts_arg = percent;
  cv_broadcast(&arc_dnlc_evicts_cv);
 }
 mutex_exit(&arc_dnlc_evicts_lock);
}
