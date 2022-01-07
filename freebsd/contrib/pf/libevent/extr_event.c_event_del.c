
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventop {int (* del ) (void*,struct event*) ;} ;
struct event_base {void* evbase; struct eventop* evsel; } ;
struct event {int ev_flags; scalar_t__* ev_pncalls; scalar_t__ ev_ncalls; struct event_base* ev_base; int ev_callback; } ;


 int EVLIST_ACTIVE ;
 int EVLIST_ALL ;
 int EVLIST_INSERTED ;
 int EVLIST_SIGNAL ;
 int EVLIST_TIMEOUT ;
 int assert (int) ;
 int event_debug (char*) ;
 int event_queue_remove (struct event_base*,struct event*,int) ;
 int stub1 (void*,struct event*) ;
 int stub2 (void*,struct event*) ;

int
event_del(struct event *ev)
{
 struct event_base *base;
 const struct eventop *evsel;
 void *evbase;

 event_debug(("event_del: %p, callback %p",
   ev, ev->ev_callback));


 if (ev->ev_base == ((void*)0))
  return (-1);

 base = ev->ev_base;
 evsel = base->evsel;
 evbase = base->evbase;

 assert(!(ev->ev_flags & ~EVLIST_ALL));


 if (ev->ev_ncalls && ev->ev_pncalls) {

  *ev->ev_pncalls = 0;
 }

 if (ev->ev_flags & EVLIST_TIMEOUT)
  event_queue_remove(base, ev, EVLIST_TIMEOUT);

 if (ev->ev_flags & EVLIST_ACTIVE)
  event_queue_remove(base, ev, EVLIST_ACTIVE);

 if (ev->ev_flags & EVLIST_INSERTED) {
  event_queue_remove(base, ev, EVLIST_INSERTED);
  return (evsel->del(evbase, ev));
 } else if (ev->ev_flags & EVLIST_SIGNAL) {
  event_queue_remove(base, ev, EVLIST_SIGNAL);
  return (evsel->del(evbase, ev));
 }

 return (0);
}
