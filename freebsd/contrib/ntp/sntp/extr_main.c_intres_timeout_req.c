
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int DEBUG_INSIST (int) ;
 int EV_PERSIST ;
 int EV_TIMEOUT ;
 int base ;
 int * ev_worker_timeout ;
 int event_add (int *,struct timeval*) ;
 int event_del (int *) ;
 int * event_new (int ,int,int,int *,int *) ;
 int worker_timeout ;

void
intres_timeout_req(
 u_int seconds
 )
{
 struct timeval tv_to;

 if (((void*)0) == ev_worker_timeout) {
  ev_worker_timeout = event_new(base, -1,
           EV_TIMEOUT | EV_PERSIST,
           &worker_timeout, ((void*)0));
  DEBUG_INSIST(((void*)0) != ev_worker_timeout);
 } else {
  event_del(ev_worker_timeout);
 }
 if (0 == seconds)
  return;
 tv_to.tv_sec = seconds;
 tv_to.tv_usec = 0;
 event_add(ev_worker_timeout, &tv_to);
}
