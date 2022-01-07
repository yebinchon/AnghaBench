
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_mode {int frsig; void* acqsig; void* relsig; } ;
struct thread {int td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int fd; } ;
struct ioctl_args {int dummy; } ;
struct file {int dummy; } ;
typedef int mode ;
typedef int caddr_t ;


 int EINVAL ;
 int ENOIOCTL ;
 int KDGETLED ;
 int KDGETMODE ;
 int KDGKBMODE ;
 int KDMKTONE ;
 int KDSETLED ;
 int KDSETMODE ;
 int KDSKBMODE ;
 int KIOCSOUND ;
 int K_RAW ;
 int K_XLATE ;
 int LINUX_SIG_VALID (void*) ;







 int VT_ACTIVATE ;
 int VT_GETACTIVE ;
 int VT_GETMODE ;
 int VT_OPENQRY ;
 int VT_RELDISP ;
 int VT_SETMODE ;
 int VT_WAITACTIVE ;
 int cap_ioctl_rights ;
 int copyin (void*,struct vt_mode*,int) ;
 int copyout (struct vt_mode*,void*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int fo_ioctl (struct file*,int ,int ,int ,struct thread*) ;
 void* linux_to_bsd_signal (void*) ;
 int sys_ioctl (struct thread*,struct ioctl_args*) ;

__attribute__((used)) static int
linux_ioctl_console(struct thread *td, struct linux_ioctl_args *args)
{
 struct file *fp;
 int error;

 error = fget(td, args->fd, &cap_ioctl_rights, &fp);
 if (error != 0)
  return (error);
 switch (args->cmd & 0xffff) {

 case 135:
  args->cmd = KIOCSOUND;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 139:
  args->cmd = KDMKTONE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 142:
  args->cmd = KDGETLED;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 138:
  args->cmd = KDSETLED;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 137:
  args->cmd = KDSETMODE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 141:
  args->cmd = KDGETMODE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 140:
  args->cmd = KDGKBMODE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 136: {
  int kbdmode;
  switch (args->arg) {
  case 144:
   kbdmode = K_RAW;
   break;
  case 143:
   kbdmode = K_XLATE;
   break;
  case 145:
   kbdmode = K_RAW;
   break;
  default:
   fdrop(fp, td);
   return (EINVAL);
  }
  error = (fo_ioctl(fp, KDSKBMODE, (caddr_t)&kbdmode,
      td->td_ucred, td));
  break;
 }

 case 131:
  args->cmd = VT_OPENQRY;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 133:
  args->cmd = VT_GETMODE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 129: {
  struct vt_mode mode;
  if ((error = copyin((void *)args->arg, &mode, sizeof(mode))))
   break;
  if (LINUX_SIG_VALID(mode.relsig))
   mode.relsig = linux_to_bsd_signal(mode.relsig);
  else
   mode.relsig = 0;
  if (LINUX_SIG_VALID(mode.acqsig))
   mode.acqsig = linux_to_bsd_signal(mode.acqsig);
  else
   mode.acqsig = 0;

  mode.frsig = 0;
  if ((error = copyout(&mode, (void *)args->arg, sizeof(mode))))
   break;
  args->cmd = VT_SETMODE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;
 }

 case 132:
  args->cmd = VT_GETACTIVE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 130:
  args->cmd = VT_RELDISP;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 134:
  args->cmd = VT_ACTIVATE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 case 128:
  args->cmd = VT_WAITACTIVE;
  error = (sys_ioctl(td, (struct ioctl_args *)args));
  break;

 default:
  error = ENOIOCTL;
  break;
 }

 fdrop(fp, td);
 return (error);
}
