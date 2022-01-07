
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int qp0_mads_outstanding; int event; int mutex; int cond; } ;
typedef TYPE_1__ osm_stats_t ;


 int EVENT_NO_TIMEOUT ;
 int TRUE ;
 int cl_event_wait_on (int *,int ,int ) ;
 int osm_exit_flag ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int wait_for_pending_transactions(osm_stats_t * stats)
{






 while (1) {
  unsigned count = stats->qp0_mads_outstanding;
  if (!count || osm_exit_flag)
   break;
  cl_event_wait_on(&stats->event, EVENT_NO_TIMEOUT, TRUE);
 }

 return osm_exit_flag;
}
