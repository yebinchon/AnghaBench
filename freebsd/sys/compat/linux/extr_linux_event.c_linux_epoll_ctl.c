
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_epoll_ctl_args {int op; int fd; int epfd; int event; } ;
struct kevent_copyops {int member_2; int * member_1; struct epoll_copyin_args* member_0; } ;
struct kevent {int flags; } ;
struct file {scalar_t__ f_type; } ;
struct epoll_event {int data; } ;
struct epoll_copyin_args {struct kevent* changelist; } ;
typedef int le ;
typedef int cap_rights_t ;


 int CAP_KQUEUE_CHANGE ;
 int CAP_POLL_EVENT ;
 scalar_t__ DTYPE_KQUEUE ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int EV_ADD ;
 int EV_ENABLE ;



 int M_WAITOK ;
 int cap_rights_init (int *,int ) ;
 int copyin (int ,struct epoll_event*,int) ;
 int epoll_delete_all_events (struct thread*,struct file*,int ) ;
 int epoll_fd_install (struct thread*,int ,int ) ;
 int epoll_kev_copyin ;
 int epoll_to_kevent (struct thread*,struct file*,int ,struct epoll_event*,int*,struct kevent*,int*) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int ,struct file**) ;
 int kern_kevent_fp (struct thread*,struct file*,int,int ,struct kevent_copyops*,int *) ;
 int kqfd_register (int ,struct kevent*,struct thread*,int ) ;

int
linux_epoll_ctl(struct thread *td, struct linux_epoll_ctl_args *args)
{
 struct file *epfp, *fp;
 struct epoll_copyin_args ciargs;
 struct kevent kev[2];
 struct kevent_copyops k_ops = { &ciargs,
     ((void*)0),
     epoll_kev_copyin};
 struct epoll_event le;
 cap_rights_t rights;
 int kev_flags;
 int nchanges = 0;
 int error;

 if (args->op != 129) {
  error = copyin(args->event, &le, sizeof(le));
  if (error != 0)
   return (error);
 }

 error = fget(td, args->epfd,
     cap_rights_init(&rights, CAP_KQUEUE_CHANGE), &epfp);
 if (error != 0)
  return (error);
 if (epfp->f_type != DTYPE_KQUEUE) {
  error = EINVAL;
  goto leave1;
 }


 error = fget(td, args->fd, cap_rights_init(&rights, CAP_POLL_EVENT), &fp);
 if (error != 0)
  goto leave1;


 if (epfp == fp) {
  error = EINVAL;
  goto leave0;
 }

 ciargs.changelist = kev;

 if (args->op != 129) {
  kev_flags = EV_ADD | EV_ENABLE;
  error = epoll_to_kevent(td, epfp, args->fd, &le,
      &kev_flags, kev, &nchanges);
  if (error != 0)
   goto leave0;
 }

 switch (args->op) {
 case 128:
  error = epoll_delete_all_events(td, epfp, args->fd);
  if (error != 0)
   goto leave0;
  break;

 case 130:




  kev[0].flags &= ~EV_ADD;
  error = kqfd_register(args->epfd, &kev[0], td, M_WAITOK);
  if (error != ENOENT) {
   error = EEXIST;
   goto leave0;
  }
  error = 0;
  kev[0].flags |= EV_ADD;
  break;

 case 129:

  error = epoll_delete_all_events(td, epfp, args->fd);
  goto leave0;

 default:
  error = EINVAL;
  goto leave0;
 }

 epoll_fd_install(td, args->fd, le.data);

 error = kern_kevent_fp(td, epfp, nchanges, 0, &k_ops, ((void*)0));

leave0:
 fdrop(fp, td);

leave1:
 fdrop(epfp, td);
 return (error);
}
