
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event_once {void (* cb ) (int,short,void*) ;int ev; void* arg; } ;


 short EV_READ ;
 short EV_SIGNAL ;
 short EV_TIMEOUT ;
 short EV_WRITE ;
 struct event_once* calloc (int,int) ;
 int event_add (int *,struct timeval*) ;
 int event_once_cb ;
 int event_set (int *,int,short,int ,struct event_once*) ;
 int evtimer_set (int *,int ,struct event_once*) ;
 int free (struct event_once*) ;
 int timerclear (struct timeval*) ;

int
event_once(int fd, short events,
    void (*callback)(int, short, void *), void *arg, struct timeval *tv)
{
 struct event_once *eonce;
 struct timeval etv;
 int res;


 if (events & EV_SIGNAL)
  return (-1);

 if ((eonce = calloc(1, sizeof(struct event_once))) == ((void*)0))
  return (-1);

 eonce->cb = callback;
 eonce->arg = arg;

 if (events == EV_TIMEOUT) {
  if (tv == ((void*)0)) {
   timerclear(&etv);
   tv = &etv;
  }

  evtimer_set(&eonce->ev, event_once_cb, eonce);
 } else if (events & (EV_READ|EV_WRITE)) {
  events &= EV_READ|EV_WRITE;

  event_set(&eonce->ev, fd, events, event_once_cb, eonce);
 } else {

  free(eonce);
  return (-1);
 }

 res = event_add(&eonce->ev, tv);
 if (res != 0) {
  free(eonce);
  return (res);
 }

 return (0);
}
