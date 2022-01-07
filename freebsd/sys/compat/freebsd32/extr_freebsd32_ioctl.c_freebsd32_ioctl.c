
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ioctl_args {int com; int fd; } ;
struct freebsd32_ioctl_args {int com; int fd; } ;
struct file {int f_flag; } ;
typedef int cap_rights_t ;


 int CAP_IOCTL ;
 int EBADF ;
 int FREAD ;
 int FWRITE ;



 int PTRIN_CP (struct freebsd32_ioctl_args,struct ioctl_args,int ) ;

 int cap_rights_init (int *,int ) ;
 int data ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int ,struct file**) ;
 int freebsd32_ioctl_barmmap (struct thread*,struct freebsd32_ioctl_args*,struct file*) ;
 int freebsd32_ioctl_memrange (struct thread*,struct freebsd32_ioctl_args*,struct file*) ;
 int freebsd32_ioctl_sg (struct thread*,struct freebsd32_ioctl_args*,struct file*) ;
 int sys_ioctl (struct thread*,struct ioctl_args*) ;

int
freebsd32_ioctl(struct thread *td, struct freebsd32_ioctl_args *uap)
{
 struct ioctl_args ap ;




 struct file *fp;
 cap_rights_t rights;
 int error;

 error = fget(td, uap->fd, cap_rights_init(&rights, CAP_IOCTL), &fp);
 if (error != 0)
  return (error);
 if ((fp->f_flag & (FREAD | FWRITE)) == 0) {
  fdrop(fp, td);
  return (EBADF);
 }

 switch (uap->com) {
 case 131:
 case 130:
  error = freebsd32_ioctl_memrange(td, uap, fp);
  break;

 case 128:
  error = freebsd32_ioctl_sg(td, uap, fp);
  break;

 case 129:
  error = freebsd32_ioctl_barmmap(td, uap, fp);
  break;

 default:
  fdrop(fp, td);
  ap.fd = uap->fd;
  ap.com = uap->com;
  PTRIN_CP(*uap, ap, data);
  return sys_ioctl(td, &ap);
 }

 fdrop(fp, td);
 return (error);
}
