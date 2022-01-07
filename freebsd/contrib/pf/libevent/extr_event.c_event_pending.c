
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event {int ev_flags; int ev_events; int ev_res; int ev_timeout; } ;


 int EVLIST_ACTIVE ;
 int EVLIST_INSERTED ;
 int EVLIST_SIGNAL ;
 int EVLIST_TIMEOUT ;
 int EV_READ ;
 int EV_SIGNAL ;
 int EV_TIMEOUT ;
 int EV_WRITE ;
 int gettime (struct timeval*) ;
 int gettimeofday (struct timeval*,int *) ;
 int timeradd (struct timeval*,struct timeval*,struct timeval*) ;
 int timersub (int *,struct timeval*,struct timeval*) ;

int
event_pending(struct event *ev, short event, struct timeval *tv)
{
 struct timeval now, res;
 int flags = 0;

 if (ev->ev_flags & EVLIST_INSERTED)
  flags |= (ev->ev_events & (EV_READ|EV_WRITE));
 if (ev->ev_flags & EVLIST_ACTIVE)
  flags |= ev->ev_res;
 if (ev->ev_flags & EVLIST_TIMEOUT)
  flags |= EV_TIMEOUT;
 if (ev->ev_flags & EVLIST_SIGNAL)
  flags |= EV_SIGNAL;

 event &= (EV_TIMEOUT|EV_READ|EV_WRITE|EV_SIGNAL);


 if (tv != ((void*)0) && (flags & event & EV_TIMEOUT)) {
  gettime(&now);
  timersub(&ev->ev_timeout, &now, &res);

  gettimeofday(&now, ((void*)0));
  timeradd(&now, &res, tv);
 }

 return (flags & event);
}
