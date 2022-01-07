
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct linux_file {int f_kqflags; int f_kqlock; TYPE_1__ f_selinfo; int _file; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int (* poll ) (struct linux_file*,int *) ;} ;


 int KNOTE_LOCKED (int *,int ) ;
 int LINUX_KQ_FLAG_NEED_READ ;
 int LINUX_KQ_FLAG_NEED_WRITE ;
 int OPW (int ,struct thread*,int ) ;
 int POLLIN ;
 int POLLOUT ;
 struct thread* curthread ;
 int linux_drop_fop (struct linux_cdev*) ;
 int linux_get_fop (struct linux_file*,struct file_operations const**,struct linux_cdev**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct linux_file*,int *) ;

__attribute__((used)) static void
linux_file_kqfilter_poll(struct linux_file *filp, int kqflags)
{
 struct thread *td;
 const struct file_operations *fop;
 struct linux_cdev *ldev;
 int temp;

 if ((filp->f_kqflags & kqflags) == 0)
  return;

 td = curthread;

 linux_get_fop(filp, &fop, &ldev);

 temp = OPW(filp->_file, td, fop->poll(filp, ((void*)0)));
 linux_drop_fop(ldev);

 spin_lock(&filp->f_kqlock);

 filp->f_kqflags &= ~(LINUX_KQ_FLAG_NEED_READ |
     LINUX_KQ_FLAG_NEED_WRITE);

 if ((temp & (POLLIN | POLLOUT)) != 0) {
  if ((temp & POLLIN) != 0)
   filp->f_kqflags |= LINUX_KQ_FLAG_NEED_READ;
  if ((temp & POLLOUT) != 0)
   filp->f_kqflags |= LINUX_KQ_FLAG_NEED_WRITE;


  KNOTE_LOCKED(&filp->f_selinfo.si_note, 0);
 }
 spin_unlock(&filp->f_kqlock);
}
