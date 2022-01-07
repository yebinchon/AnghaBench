
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int dummy; } ;


 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int epoll_delete_event (struct thread*,struct file*,int,int ) ;

__attribute__((used)) static int
epoll_delete_all_events(struct thread *td, struct file *epfp, int fd)
{
 int error1, error2;

 error1 = epoll_delete_event(td, epfp, fd, EVFILT_READ);
 error2 = epoll_delete_event(td, epfp, fd, EVFILT_WRITE);


 return (error1 == 0 ? 0 : error2);
}
