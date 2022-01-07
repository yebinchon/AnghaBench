
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct linux_file {int f_flags; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int (* poll ) (struct linux_file*,int ) ;} ;
struct file {int f_flag; scalar_t__ f_data; } ;


 int LINUX_POLL_TABLE_NORMAL ;
 int OPW (struct file*,struct thread*,int ) ;
 int linux_drop_fop (struct linux_cdev*) ;
 int linux_get_fop (struct linux_file*,struct file_operations const**,struct linux_cdev**) ;
 int linux_set_current (struct thread*) ;
 int stub1 (struct linux_file*,int ) ;

__attribute__((used)) static int
linux_file_poll(struct file *file, int events, struct ucred *active_cred,
    struct thread *td)
{
 struct linux_file *filp;
 const struct file_operations *fop;
 struct linux_cdev *ldev;
 int revents;

 filp = (struct linux_file *)file->f_data;
 filp->f_flags = file->f_flag;
 linux_set_current(td);
 linux_get_fop(filp, &fop, &ldev);
 if (fop->poll != ((void*)0)) {
  revents = OPW(file, td, fop->poll(filp,
      LINUX_POLL_TABLE_NORMAL)) & events;
 } else {
  revents = 0;
 }
 linux_drop_fop(ldev);
 return (revents);
}
