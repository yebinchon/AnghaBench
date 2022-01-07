
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event_once {void (* cb ) (int ,short,void*) ;int ev; void* arg; } ;
struct event_base {int once_events; } ;
typedef int evutil_socket_t ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 short EV_CLOSED ;
 short EV_PERSIST ;
 short EV_READ ;
 short EV_SIGNAL ;
 short EV_TIMEOUT ;
 short EV_WRITE ;
 int LIST_INSERT_HEAD (int *,struct event_once*,int ) ;
 int event_active_nolock_ (int *,short,int) ;
 int event_add_nolock_ (int *,struct timeval const*,int ) ;
 int event_assign (int *,struct event_base*,int ,short,int ,struct event_once*) ;
 int event_once_cb ;
 int evtimer_assign (int *,struct event_base*,int ,struct event_once*) ;
 int evutil_timerisset (struct timeval const*) ;
 struct event_once* mm_calloc (int,int) ;
 int mm_free (struct event_once*) ;
 int next_once ;
 int th_base_lock ;

int
event_base_once(struct event_base *base, evutil_socket_t fd, short events,
    void (*callback)(evutil_socket_t, short, void *),
    void *arg, const struct timeval *tv)
{
 struct event_once *eonce;
 int res = 0;
 int activate = 0;



 if (events & (EV_SIGNAL|EV_PERSIST))
  return (-1);

 if ((eonce = mm_calloc(1, sizeof(struct event_once))) == ((void*)0))
  return (-1);

 eonce->cb = callback;
 eonce->arg = arg;

 if ((events & (EV_TIMEOUT|EV_SIGNAL|EV_READ|EV_WRITE|EV_CLOSED)) == EV_TIMEOUT) {
  evtimer_assign(&eonce->ev, base, event_once_cb, eonce);

  if (tv == ((void*)0) || ! evutil_timerisset(tv)) {




   activate = 1;
  }
 } else if (events & (EV_READ|EV_WRITE|EV_CLOSED)) {
  events &= EV_READ|EV_WRITE|EV_CLOSED;

  event_assign(&eonce->ev, base, fd, events, event_once_cb, eonce);
 } else {

  mm_free(eonce);
  return (-1);
 }

 if (res == 0) {
  EVBASE_ACQUIRE_LOCK(base, th_base_lock);
  if (activate)
   event_active_nolock_(&eonce->ev, EV_TIMEOUT, 1);
  else
   res = event_add_nolock_(&eonce->ev, tv, 0);

  if (res != 0) {
   mm_free(eonce);
   return (res);
  } else {
   LIST_INSERT_HEAD(&base->once_events, eonce, next_once);
  }
  EVBASE_RELEASE_LOCK(base, th_base_lock);
 }

 return (0);
}
