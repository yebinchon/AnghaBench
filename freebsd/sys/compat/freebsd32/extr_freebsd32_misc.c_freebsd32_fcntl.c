
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_fcntl_args {int cmd; long arg; int fd; } ;
 int kern_fcntl_freebsd (struct thread*,int ,int,long) ;

int
freebsd32_fcntl(struct thread *td, struct freebsd32_fcntl_args *uap)
{
 long tmp;

 switch (uap->cmd) {




 case 128:
 case 129:
 case 130:
 case 136:
 case 132:
 case 131:
 case 135:
 case 134:
 case 133:
  tmp = (unsigned int)(uap->arg);
  break;
 default:
  tmp = uap->arg;
  break;
 }
 return (kern_fcntl_freebsd(td, uap->fd, uap->cmd, tmp));
}
