
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct thread {scalar_t__* td_retval; int td_proc; int td_flags; int td_pflags; } ;
struct kevent_copyops {int * member_2; int member_1; struct epoll_copyout_args* member_0; } ;
struct file {scalar_t__ f_type; } ;
struct epoll_event {int dummy; } ;
struct epoll_copyout_args {int error; scalar_t__ count; int p; struct epoll_event* leventlist; } ;
typedef int sigset_t ;
typedef int cap_rights_t ;


 int CAP_KQUEUE_EVENT ;
 scalar_t__ DTYPE_KQUEUE ;
 int EINVAL ;
 int LINUX_MAX_EVENTS ;
 int SIG_SETMASK ;
 int TDF_ASTPENDING ;
 int TDP_OLDMASK ;
 int cap_rights_init (int *,int ) ;
 int epoll_kev_copyout ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int ,struct file**) ;
 int kern_kevent_fp (struct thread*,struct file*,int ,int,struct kevent_copyops*,struct timespec*) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static int
linux_epoll_wait_common(struct thread *td, int epfd, struct epoll_event *events,
    int maxevents, int timeout, sigset_t *uset)
{
 struct epoll_copyout_args coargs;
 struct kevent_copyops k_ops = { &coargs,
     epoll_kev_copyout,
     ((void*)0)};
 struct timespec ts, *tsp;
 cap_rights_t rights;
 struct file *epfp;
 sigset_t omask;
 int error;

 if (maxevents <= 0 || maxevents > LINUX_MAX_EVENTS)
  return (EINVAL);

 error = fget(td, epfd,
     cap_rights_init(&rights, CAP_KQUEUE_EVENT), &epfp);
 if (error != 0)
  return (error);
 if (epfp->f_type != DTYPE_KQUEUE) {
  error = EINVAL;
  goto leave1;
 }
 if (uset != ((void*)0)) {
  error = kern_sigprocmask(td, SIG_SETMASK, uset,
      &omask, 0);
  if (error != 0)
   goto leave1;
  td->td_pflags |= TDP_OLDMASK;





  thread_lock(td);
  td->td_flags |= TDF_ASTPENDING;
  thread_unlock(td);
 }


 coargs.leventlist = events;
 coargs.p = td->td_proc;
 coargs.count = 0;
 coargs.error = 0;

 if (timeout != -1) {
  if (timeout < 0) {
   error = EINVAL;
   goto leave0;
  }

  ts.tv_sec = timeout / 1000;
  ts.tv_nsec = (timeout % 1000) * 1000000;
  tsp = &ts;
 } else {
  tsp = ((void*)0);
 }

 error = kern_kevent_fp(td, epfp, 0, maxevents, &k_ops, tsp);
 if (error == 0 && coargs.error != 0)
  error = coargs.error;





 if (error == 0)
  td->td_retval[0] = coargs.count;

leave0:
 if (uset != ((void*)0))
  error = kern_sigprocmask(td, SIG_SETMASK, &omask,
      ((void*)0), 0);
leave1:
 fdrop(epfp, td);
 return (error);
}
