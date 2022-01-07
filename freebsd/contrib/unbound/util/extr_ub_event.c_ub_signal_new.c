
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct ub_event {int dummy; } ;
struct event {int dummy; } ;


 int AS_EVENT_BASE (struct ub_event_base*) ;
 struct ub_event* AS_UB_EVENT (struct event*) ;
 int NATIVE_BITS_CB (void (*) (int,short,void*)) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ event_base_set (int ,struct event*) ;
 scalar_t__ evsignal_assign (struct event*,int ,int,void (*) (int,short,void*),void*) ;
 int free (struct event*) ;
 int signal_set (struct event*,int,int ,void*) ;

struct ub_event*
ub_signal_new(struct ub_event_base* base, int fd,
 void (*cb)(int, short, void*), void* arg)
{
 struct event *ev = (struct event*)calloc(1, sizeof(struct event));

 if (!ev)
  return ((void*)0);


 signal_set(ev, fd, NATIVE_BITS_CB(cb), arg);
 if (event_base_set(AS_EVENT_BASE(base), ev) != 0) {
  free(ev);
  return ((void*)0);
 }






 return AS_UB_EVENT(ev);
}
