
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {TYPE_1__* td_proc; } ;
struct task_struct {unsigned int bsd_ioctl_len; int * bsd_ioctl_data; } ;
struct linux_file {int dummy; } ;
struct file_operations {int (* unlocked_ioctl ) (struct linux_file*,int ,int ) ;int (* compat_ioctl ) (struct linux_file*,int ,int ) ;} ;
struct file {int dummy; } ;
typedef int * caddr_t ;
struct TYPE_2__ {scalar_t__ p_elf_machine; } ;


 scalar_t__ EM_386 ;
 int ENOTTY ;
 int EWOULDBLOCK ;
 unsigned int IOCPARM_LEN (int ) ;
 scalar_t__ LINUX_IOCTL_MIN_PTR ;
 int LINUX_KQ_FLAG_HAS_READ ;
 int LINUX_KQ_FLAG_HAS_WRITE ;
 int OPW (struct file*,struct thread*,int ) ;
 struct task_struct* current ;
 int linux_file_kqfilter_poll (struct linux_file*,int) ;
 int linux_get_error (struct task_struct*,int) ;
 int stub1 (struct linux_file*,int ,int ) ;
 int stub2 (struct linux_file*,int ,int ) ;
 int stub3 (struct linux_file*,int ,int ) ;

__attribute__((used)) static int
linux_file_ioctl_sub(struct file *fp, struct linux_file *filp,
    const struct file_operations *fop, u_long cmd, caddr_t data,
    struct thread *td)
{
 struct task_struct *task = current;
 unsigned size;
 int error;

 size = IOCPARM_LEN(cmd);

 if (size > 0) {






  task->bsd_ioctl_data = data;
  task->bsd_ioctl_len = size;
  data = (void *)LINUX_IOCTL_MIN_PTR;
 } else {

  data = *(void **)data;
 }

 if (td->td_proc->p_elf_machine == EM_386) {

  if (fop->compat_ioctl != ((void*)0)) {
   error = -OPW(fp, td, fop->compat_ioctl(filp,
       cmd, (u_long)data));
  } else {
   error = ENOTTY;
  }


  if (error == ENOTTY && fop->unlocked_ioctl != ((void*)0)) {
   error = -OPW(fp, td, fop->unlocked_ioctl(filp,
       cmd, (u_long)data));
  }
 } else

 {
  if (fop->unlocked_ioctl != ((void*)0)) {
   error = -OPW(fp, td, fop->unlocked_ioctl(filp,
       cmd, (u_long)data));
  } else {
   error = ENOTTY;
  }
 }
 if (size > 0) {
  task->bsd_ioctl_data = ((void*)0);
  task->bsd_ioctl_len = 0;
 }

 if (error == EWOULDBLOCK) {

  linux_file_kqfilter_poll(filp,
      LINUX_KQ_FLAG_HAS_READ | LINUX_KQ_FLAG_HAS_WRITE);
 } else {
  error = linux_get_error(task, error);
 }
 return (error);
}
