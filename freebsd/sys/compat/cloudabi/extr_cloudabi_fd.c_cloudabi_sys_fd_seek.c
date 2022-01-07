
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_fd_seek_args {int whence; int offset; int fd; } ;





 int EINVAL ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int kern_lseek (struct thread*,int ,int ,int) ;

int
cloudabi_sys_fd_seek(struct thread *td, struct cloudabi_sys_fd_seek_args *uap)
{
 int whence;

 switch (uap->whence) {
 case 130:
  whence = SEEK_CUR;
  break;
 case 129:
  whence = SEEK_END;
  break;
 case 128:
  whence = SEEK_SET;
  break;
 default:
  return (EINVAL);
 }

 return (kern_lseek(td, uap->fd, uap->offset, whence));
}
