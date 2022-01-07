
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct ub_event {int dummy; } ;
struct timeval {int dummy; } ;


 int AS_EVENT (struct ub_event*) ;
 int AS_EVENT_BASE (struct ub_event_base*) ;
 int EV_TIMEOUT ;
 int NATIVE_BITS_CB (void (*) (int,short,void*)) ;
 scalar_t__ event_base_set (int ,int ) ;
 int event_set (int ,int,int ,int ,void*) ;
 int evtimer_add (int ,struct timeval*) ;

int
ub_timer_add(struct ub_event* ev, struct ub_event_base* base,
 void (*cb)(int, short, void*), void* arg, struct timeval* tv)
{
 event_set(AS_EVENT(ev), -1, EV_TIMEOUT, NATIVE_BITS_CB(cb), arg);
 if (event_base_set(AS_EVENT_BASE(base), AS_EVENT(ev)) != 0)
  return -1;
 return evtimer_add(AS_EVENT(ev), tv);
}
