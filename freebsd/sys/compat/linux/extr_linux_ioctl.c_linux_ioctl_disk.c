
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int fd; } ;
struct file {int dummy; } ;
typedef int sectorsize ;
typedef int off_t ;
typedef int caddr_t ;


 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int ENOIOCTL ;


 int cap_ioctl_rights ;
 int copyout (int*,void*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int fo_ioctl (struct file*,int ,int ,int ,struct thread*) ;

__attribute__((used)) static int
linux_ioctl_disk(struct thread *td, struct linux_ioctl_args *args)
{
 struct file *fp;
 int error;
 u_int sectorsize;
 off_t mediasize;

 error = fget(td, args->fd, &cap_ioctl_rights, &fp);
 if (error != 0)
  return (error);
 switch (args->cmd & 0xffff) {
 case 129:
  error = fo_ioctl(fp, DIOCGSECTORSIZE,
      (caddr_t)&sectorsize, td->td_ucred, td);
  if (!error)
   error = fo_ioctl(fp, DIOCGMEDIASIZE,
       (caddr_t)&mediasize, td->td_ucred, td);
  fdrop(fp, td);
  if (error)
   return (error);
  sectorsize = mediasize / sectorsize;



  return (copyout(&sectorsize, (void *)args->arg,
      sizeof(sectorsize)));
  break;
 case 128:
  error = fo_ioctl(fp, DIOCGSECTORSIZE,
      (caddr_t)&sectorsize, td->td_ucred, td);
  fdrop(fp, td);
  if (error)
   return (error);
  return (copyout(&sectorsize, (void *)args->arg,
      sizeof(sectorsize)));
  break;
 }
 fdrop(fp, td);
 return (ENOIOCTL);
}
