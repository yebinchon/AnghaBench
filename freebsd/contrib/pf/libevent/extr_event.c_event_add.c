
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct eventop {int (* add ) (void*,struct event*) ;} ;
struct event_base {void* evbase; struct eventop* evsel; } ;
struct event {int ev_events; int ev_flags; int ev_res; int ev_callback; int ev_timeout; scalar_t__* ev_pncalls; scalar_t__ ev_ncalls; struct event_base* ev_base; } ;


 int EVLIST_ACTIVE ;
 int EVLIST_ALL ;
 int EVLIST_INSERTED ;
 int EVLIST_SIGNAL ;
 int EVLIST_TIMEOUT ;
 int EV_READ ;
 int EV_SIGNAL ;
 int EV_TIMEOUT ;
 int EV_WRITE ;
 int assert (int) ;
 int event_debug (char*) ;
 int event_queue_insert (struct event_base*,struct event*,int) ;
 int event_queue_remove (struct event_base*,struct event*,int) ;
 int gettime (struct timeval*) ;
 int stub1 (void*,struct event*) ;
 int stub2 (void*,struct event*) ;
 int timeradd (struct timeval*,struct timeval*,int *) ;

int
event_add(struct event *ev, struct timeval *tv)
{
 struct event_base *base = ev->ev_base;
 const struct eventop *evsel = base->evsel;
 void *evbase = base->evbase;

 event_debug((
   "event_add: event: %p, %s%s%scall %p",
   ev,
   ev->ev_events & EV_READ ? "EV_READ " : " ",
   ev->ev_events & EV_WRITE ? "EV_WRITE " : " ",
   tv ? "EV_TIMEOUT " : " ",
   ev->ev_callback));

 assert(!(ev->ev_flags & ~EVLIST_ALL));

 if (tv != ((void*)0)) {
  struct timeval now;

  if (ev->ev_flags & EVLIST_TIMEOUT)
   event_queue_remove(base, ev, EVLIST_TIMEOUT);




  if ((ev->ev_flags & EVLIST_ACTIVE) &&
      (ev->ev_res & EV_TIMEOUT)) {



   if (ev->ev_ncalls && ev->ev_pncalls) {

    *ev->ev_pncalls = 0;
   }

   event_queue_remove(base, ev, EVLIST_ACTIVE);
  }

  gettime(&now);
  timeradd(&now, tv, &ev->ev_timeout);

  event_debug((
    "event_add: timeout in %d seconds, call %p",
    tv->tv_sec, ev->ev_callback));

  event_queue_insert(base, ev, EVLIST_TIMEOUT);
 }

 if ((ev->ev_events & (EV_READ|EV_WRITE)) &&
     !(ev->ev_flags & (EVLIST_INSERTED|EVLIST_ACTIVE))) {
  event_queue_insert(base, ev, EVLIST_INSERTED);

  return (evsel->add(evbase, ev));
 } else if ((ev->ev_events & EV_SIGNAL) &&
     !(ev->ev_flags & EVLIST_SIGNAL)) {
  event_queue_insert(base, ev, EVLIST_SIGNAL);

  return (evsel->add(evbase, ev));
 }

 return (0);
}
