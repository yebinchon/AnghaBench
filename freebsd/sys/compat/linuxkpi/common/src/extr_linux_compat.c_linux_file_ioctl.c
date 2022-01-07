
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct linux_file {int f_flags; int f_sigio; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int (* fasync ) (int ,struct linux_file*,int) ;} ;
struct file {int f_flag; scalar_t__ f_data; } ;


 int FASYNC ;




 int OPW (struct file*,struct thread*,int ) ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;
 int linux_drop_fop (struct linux_cdev*) ;
 int linux_file_ioctl_sub (struct file*,struct linux_file*,struct file_operations const*,int,void*,struct thread*) ;
 int linux_get_fop (struct linux_file*,struct file_operations const**,struct linux_cdev**) ;
 int linux_set_current (struct thread*) ;
 int stub1 (int ,struct linux_file*,int) ;
 int stub2 (int ,struct linux_file*,int) ;

__attribute__((used)) static int
linux_file_ioctl(struct file *fp, u_long cmd, void *data, struct ucred *cred,
    struct thread *td)
{
 struct linux_file *filp;
 const struct file_operations *fop;
 struct linux_cdev *ldev;
 int error;

 error = 0;
 filp = (struct linux_file *)fp->f_data;
 filp->f_flags = fp->f_flag;
 linux_get_fop(filp, &fop, &ldev);

 linux_set_current(td);
 switch (cmd) {
 case 129:
  break;
 case 131:
  if (fop->fasync == ((void*)0))
   break;
  error = -OPW(fp, td, fop->fasync(0, filp, fp->f_flag & FASYNC));
  break;
 case 128:
  error = fsetown(*(int *)data, &filp->f_sigio);
  if (error == 0) {
   if (fop->fasync == ((void*)0))
    break;
   error = -OPW(fp, td, fop->fasync(0, filp,
       fp->f_flag & FASYNC));
  }
  break;
 case 130:
  *(int *)data = fgetown(&filp->f_sigio);
  break;
 default:
  error = linux_file_ioctl_sub(fp, filp, fop, cmd, data, td);
  break;
 }
 linux_drop_fop(ldev);
 return (error);
}
