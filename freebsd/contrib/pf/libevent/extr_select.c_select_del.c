
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selectop {size_t event_fds; int ** event_w_by_fd; int event_writeset_in; int ** event_r_by_fd; int event_readset_in; } ;
struct event {int ev_events; size_t ev_fd; } ;


 int EV_READ ;
 int EV_SIGNAL ;
 int EV_WRITE ;
 int FD_CLR (size_t,int ) ;
 int check_selectop (struct selectop*) ;
 int evsignal_del (struct event*) ;

int
select_del(void *arg, struct event *ev)
{
 struct selectop *sop = arg;

 check_selectop(sop);
 if (ev->ev_events & EV_SIGNAL)
  return (evsignal_del(ev));

 if (sop->event_fds < ev->ev_fd) {
  check_selectop(sop);
  return (0);
 }

 if (ev->ev_events & EV_READ) {
  FD_CLR(ev->ev_fd, sop->event_readset_in);
  sop->event_r_by_fd[ev->ev_fd] = ((void*)0);
 }

 if (ev->ev_events & EV_WRITE) {
  FD_CLR(ev->ev_fd, sop->event_writeset_in);
  sop->event_w_by_fd[ev->ev_fd] = ((void*)0);
 }

 check_selectop(sop);
 return (0);
}
