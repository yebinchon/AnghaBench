
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int flags; int filter; } ;
struct epoll_event {int events; } ;




 int EV_EOF ;
 int EV_ERROR ;
 int LINUX_EPOLLERR ;
 int LINUX_EPOLLIN ;
 int LINUX_EPOLLOUT ;
 int LINUX_EPOLLRDHUP ;

__attribute__((used)) static void
kevent_to_epoll(struct kevent *kevent, struct epoll_event *l_event)
{

 if ((kevent->flags & EV_ERROR) != 0) {
  l_event->events = LINUX_EPOLLERR;
  return;
 }


 switch (kevent->filter) {
 case 129:
  l_event->events = LINUX_EPOLLIN;
  if ((kevent->flags & EV_EOF) != 0)
   l_event->events |= LINUX_EPOLLRDHUP;
 break;
 case 128:
  l_event->events = LINUX_EPOLLOUT;
 break;
 }
}
