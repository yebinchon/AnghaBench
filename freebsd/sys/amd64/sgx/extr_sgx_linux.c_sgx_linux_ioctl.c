
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_long ;
struct thread {int td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int fd; } ;
struct file {int dummy; } ;
typedef int cap_rights_t ;
typedef int caddr_t ;


 int CAP_IOCTL ;
 int EINVAL ;
 int IOCPARM_LEN (int) ;
 int IOC_IN ;
 int IOC_OUT ;
 int LINUX_IOC_IN ;
 int LINUX_IOC_OUT ;
 int SGX_IOCTL_MAX_DATA_LEN ;
 int cap_rights_init (int *,int ) ;
 int copyin (void*,int *,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int ,struct file**) ;
 int fo_ioctl (struct file*,int,int ,int ,struct thread*) ;

__attribute__((used)) static int
sgx_linux_ioctl(struct thread *td, struct linux_ioctl_args *args)
{
 uint8_t data[SGX_IOCTL_MAX_DATA_LEN];
 cap_rights_t rights;
 struct file *fp;
 u_long cmd;
 int error;
 int len;

 error = fget(td, args->fd, cap_rights_init(&rights, CAP_IOCTL), &fp);
 if (error != 0)
  return (error);

 cmd = args->cmd;

 args->cmd &= ~(LINUX_IOC_IN | LINUX_IOC_OUT);
 if ((cmd & LINUX_IOC_IN) != 0)
  args->cmd |= IOC_IN;
 if ((cmd & LINUX_IOC_OUT) != 0)
  args->cmd |= IOC_OUT;

 len = IOCPARM_LEN(cmd);
 if (len > SGX_IOCTL_MAX_DATA_LEN) {
  error = EINVAL;
  goto out;
 }

 if ((cmd & LINUX_IOC_IN) != 0) {
  error = copyin((void *)args->arg, data, len);
  if (error != 0)
   goto out;
 }

 error = fo_ioctl(fp, args->cmd, (caddr_t)data, td->td_ucred, td);
out:
 fdrop(fp, td);
 return (error);
}
