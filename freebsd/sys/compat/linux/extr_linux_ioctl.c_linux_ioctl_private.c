
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ioctl_args {int fd; } ;
struct file {int f_type; } ;


 int DTYPE_SOCKET ;
 int ENOIOCTL ;
 int cap_ioctl_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int linux_ioctl_socket (struct thread*,struct linux_ioctl_args*) ;

__attribute__((used)) static int
linux_ioctl_private(struct thread *td, struct linux_ioctl_args *args)
{
 struct file *fp;
 int error, type;

 error = fget(td, args->fd, &cap_ioctl_rights, &fp);
 if (error != 0)
  return (error);
 type = fp->f_type;
 fdrop(fp, td);
 if (type == DTYPE_SOCKET)
  return (linux_ioctl_socket(td, args));
 return (ENOIOCTL);
}
