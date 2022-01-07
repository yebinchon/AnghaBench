
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollop {int* idxplus1_by_fd; int nfds; struct pollfd* event_set; int ** event_w_back; int ** event_r_back; } ;
struct pollfd {int events; size_t fd; } ;
struct event {int ev_events; size_t ev_fd; } ;


 int EV_READ ;
 int EV_SIGNAL ;
 int EV_WRITE ;
 int POLLIN ;
 int POLLOUT ;
 int evsignal_del (struct event*) ;
 int memcpy (struct pollfd*,struct pollfd*,int) ;
 int poll_check_ok (struct pollop*) ;

int
poll_del(void *arg, struct event *ev)
{
 struct pollop *pop = arg;
 struct pollfd *pfd = ((void*)0);
 int i;

 if (ev->ev_events & EV_SIGNAL)
  return (evsignal_del(ev));

 if (!(ev->ev_events & (EV_READ|EV_WRITE)))
  return (0);

 poll_check_ok(pop);
 i = pop->idxplus1_by_fd[ev->ev_fd] - 1;
 if (i < 0)
  return (-1);


 pfd = &pop->event_set[i];
 if (ev->ev_events & EV_READ) {
  pfd->events &= ~POLLIN;
  pop->event_r_back[i] = ((void*)0);
 }
 if (ev->ev_events & EV_WRITE) {
  pfd->events &= ~POLLOUT;
  pop->event_w_back[i] = ((void*)0);
 }
 poll_check_ok(pop);
 if (pfd->events)

  return (0);


 pop->idxplus1_by_fd[ev->ev_fd] = 0;

 --pop->nfds;
 if (i != pop->nfds) {




  memcpy(&pop->event_set[i], &pop->event_set[pop->nfds],
         sizeof(struct pollfd));
  pop->event_r_back[i] = pop->event_r_back[pop->nfds];
  pop->event_w_back[i] = pop->event_w_back[pop->nfds];
  pop->idxplus1_by_fd[pop->event_set[i].fd] = i + 1;
 }

 poll_check_ok(pop);
 return (0);
}
