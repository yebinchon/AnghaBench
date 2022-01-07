
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct ub_event {int dummy; } ;
struct event {int dummy; } ;


 int AS_EVENT_BASE (struct ub_event_base*) ;
 struct ub_event* AS_UB_EVENT (struct event*) ;
 int NATIVE_BITS (short) ;
 int NATIVE_BITS_CB (void (*) (int,short,void*)) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ event_assign (struct event*,int ,int,short,void (*) (int,short,void*),void*) ;
 scalar_t__ event_base_set (int ,struct event*) ;
 int event_set (struct event*,int,int ,int ,void*) ;
 int free (struct event*) ;

struct ub_event*
ub_event_new(struct ub_event_base* base, int fd, short bits,
 void (*cb)(int, short, void*), void* arg)
{
 struct event *ev = (struct event*)calloc(1, sizeof(struct event));

 if (!ev)
  return ((void*)0);


 event_set(ev, fd, NATIVE_BITS(bits), NATIVE_BITS_CB(cb), arg);
 if (event_base_set(AS_EVENT_BASE(base), ev) != 0) {
  free(ev);
  return ((void*)0);
 }






 return AS_UB_EVENT(ev);
}
