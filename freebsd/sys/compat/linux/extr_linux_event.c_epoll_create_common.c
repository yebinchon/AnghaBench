
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int EPOLL_DEF_SZ ;
 int epoll_fd_install (struct thread*,int ,int ) ;
 int kern_kqueue (struct thread*,int,int *) ;

__attribute__((used)) static int
epoll_create_common(struct thread *td, int flags)
{
 int error;

 error = kern_kqueue(td, flags, ((void*)0));
 if (error != 0)
  return (error);

 epoll_fd_install(td, EPOLL_DEF_SZ, 0);

 return (0);
}
