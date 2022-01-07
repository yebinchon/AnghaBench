
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_pemuldata {int flags; int * epoll; } ;
struct kevent {int dummy; } ;
struct file {int dummy; } ;
struct epoll_event {int events; } ;


 int EINVAL ;
 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int EV_CLEAR ;
 int EV_EOF ;
 int EV_ERROR ;
 int EV_ONESHOT ;
 int EV_SET (int ,int,int ,int,int ,int ,int ) ;
 int KASSERT (int ,char*) ;
 int LINUX_EPOLLERR ;
 int LINUX_EPOLLET ;
 int LINUX_EPOLLONESHOT ;
 int LINUX_EPOLLRDHUP ;
 int LINUX_EPOLL_EVRD ;
 int LINUX_EPOLL_EVSUP ;
 int LINUX_EPOLL_EVWR ;
 int LINUX_PEM_XLOCK (struct linux_pemuldata*) ;
 int LINUX_PEM_XUNLOCK (struct linux_pemuldata*) ;
 int LINUX_XUNSUP_EPOLL ;
 int linux_msg (struct thread*,char*,int) ;
 struct linux_pemuldata* pem_find (struct proc*) ;

__attribute__((used)) static int
epoll_to_kevent(struct thread *td, struct file *epfp,
    int fd, struct epoll_event *l_event, int *kev_flags,
    struct kevent *kevent, int *nkevents)
{
 uint32_t levents = l_event->events;
 struct linux_pemuldata *pem;
 struct proc *p;


 if ((levents & LINUX_EPOLLONESHOT) != 0)
  *kev_flags |= EV_ONESHOT;
 if ((levents & LINUX_EPOLLET) != 0)
  *kev_flags |= EV_CLEAR;
 if ((levents & LINUX_EPOLLERR) != 0)
  *kev_flags |= EV_ERROR;
 if ((levents & LINUX_EPOLLRDHUP) != 0)
  *kev_flags |= EV_EOF;


 if ((levents & LINUX_EPOLL_EVRD) != 0) {
  EV_SET(kevent++, fd, EVFILT_READ, *kev_flags, 0, 0, 0);
  ++(*nkevents);
 }
 if ((levents & LINUX_EPOLL_EVWR) != 0) {
  EV_SET(kevent++, fd, EVFILT_WRITE, *kev_flags, 0, 0, 0);
  ++(*nkevents);
 }

 if ((levents & ~(LINUX_EPOLL_EVSUP)) != 0) {
  p = td->td_proc;

  pem = pem_find(p);
  KASSERT(pem != ((void*)0), ("epoll proc emuldata not found.\n"));
  KASSERT(pem->epoll != ((void*)0), ("epoll proc epolldata not found.\n"));

  LINUX_PEM_XLOCK(pem);
  if ((pem->flags & LINUX_XUNSUP_EPOLL) == 0) {
   pem->flags |= LINUX_XUNSUP_EPOLL;
   LINUX_PEM_XUNLOCK(pem);
   linux_msg(td, "epoll_ctl unsupported flags: 0x%x\n",
       levents);
  } else
   LINUX_PEM_XUNLOCK(pem);
  return (EINVAL);
 }

 return (0);
}
