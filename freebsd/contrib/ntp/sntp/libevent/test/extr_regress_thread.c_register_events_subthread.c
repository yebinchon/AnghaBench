
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int member_1; int member_0; } ;
typedef int THREAD_FN ;


 int EV_TIMEOUT ;
 int SLEEP_MS (int) ;
 int THREAD_RETURN () ;
 int event_active (int *,int ,int) ;
 int event_add (int *,struct timeval*) ;
 int * time_events ;

__attribute__((used)) static THREAD_FN
register_events_subthread(void *arg)
{
 struct timeval tv = {0,0};
 SLEEP_MS(100);
 event_active(&time_events[0], EV_TIMEOUT, 1);
 SLEEP_MS(100);
 event_active(&time_events[1], EV_TIMEOUT, 1);
 SLEEP_MS(100);
 tv.tv_usec = 100*1000;
 event_add(&time_events[2], &tv);
 tv.tv_usec = 150*1000;
 event_add(&time_events[3], &tv);
 SLEEP_MS(200);
 event_active(&time_events[4], EV_TIMEOUT, 1);

 THREAD_RETURN();
}
