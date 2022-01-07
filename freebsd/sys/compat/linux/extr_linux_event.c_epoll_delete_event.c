
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kevent_copyops {int member_2; int * member_1; struct epoll_copyin_args* member_0; } ;
struct kevent {int dummy; } ;
struct file {int dummy; } ;
struct epoll_copyin_args {struct kevent* changelist; } ;


 int EV_DELETE ;
 int EV_DISABLE ;
 int EV_SET (struct kevent*,int,int,int,int ,int ,int ) ;
 int epoll_kev_copyin ;
 int kern_kevent_fp (struct thread*,struct file*,int,int ,struct kevent_copyops*,int *) ;

__attribute__((used)) static int
epoll_delete_event(struct thread *td, struct file *epfp, int fd, int filter)
{
 struct epoll_copyin_args ciargs;
 struct kevent kev;
 struct kevent_copyops k_ops = { &ciargs,
     ((void*)0),
     epoll_kev_copyin};

 ciargs.changelist = &kev;
 EV_SET(&kev, fd, filter, EV_DELETE | EV_DISABLE, 0, 0, 0);

 return (kern_kevent_fp(td, epfp, 1, 0, &k_ops, ((void*)0)));
}
