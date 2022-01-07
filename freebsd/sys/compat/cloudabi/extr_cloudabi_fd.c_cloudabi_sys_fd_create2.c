
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct cloudabi_sys_fd_create2_args {int type; } ;


 int AF_UNIX ;


 int EINVAL ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int kern_socketpair (struct thread*,int ,int,int ,int*) ;

int
cloudabi_sys_fd_create2(struct thread *td,
    struct cloudabi_sys_fd_create2_args *uap)
{
 int fds[2];
 int error, type;

 switch (uap->type) {
 case 129:
  type = SOCK_DGRAM;
  break;
 case 128:
  type = SOCK_STREAM;
  break;
 default:
  return (EINVAL);
 }

 error = kern_socketpair(td, AF_UNIX, type, 0, fds);
 if (error == 0) {
  td->td_retval[0] = fds[0];
  td->td_retval[1] = fds[1];
 }
 return (0);
}
