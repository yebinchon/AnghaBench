
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_file {int * f_cdev; int * f_vnode; int f_sigio; int f_flags; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int (* release ) (int *,struct linux_file*) ;} ;
struct file {int f_flag; scalar_t__ f_data; } ;


 int KASSERT (int,char*) ;
 int OPW (struct file*,struct thread*,int ) ;
 scalar_t__ file_count (struct linux_file*) ;
 int funsetown (int *) ;
 int kfree (struct linux_file*) ;
 int linux_cdev_deref (int *) ;
 int linux_drop_fop (struct linux_cdev*) ;
 int linux_get_fop (struct linux_file*,struct file_operations const**,struct linux_cdev**) ;
 int linux_poll_wait_dequeue (struct linux_file*) ;
 int linux_set_current (struct thread*) ;
 int stub1 (int *,struct linux_file*) ;
 int vdrop (int *) ;

__attribute__((used)) static int
linux_file_close(struct file *file, struct thread *td)
{
 struct linux_file *filp;
 const struct file_operations *fop;
 struct linux_cdev *ldev;
 int error;

 filp = (struct linux_file *)file->f_data;

 KASSERT(file_count(filp) == 0,
     ("File refcount(%d) is not zero", file_count(filp)));

 error = 0;
 filp->f_flags = file->f_flag;
 linux_set_current(td);
 linux_poll_wait_dequeue(filp);
 linux_get_fop(filp, &fop, &ldev);
 if (fop->release != ((void*)0))
  error = -OPW(file, td, fop->release(filp->f_vnode, filp));
 funsetown(&filp->f_sigio);
 if (filp->f_vnode != ((void*)0))
  vdrop(filp->f_vnode);
 linux_drop_fop(ldev);
 if (filp->f_cdev != ((void*)0))
  linux_cdev_deref(filp->f_cdev);
 kfree(filp);

 return (error);
}
