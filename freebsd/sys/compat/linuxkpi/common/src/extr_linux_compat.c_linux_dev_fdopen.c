
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_file {int f_mode; int f_vnode; struct linux_cdev* f_cdev; struct file* _file; int f_flags; int f_op; int f_dentry_store; int * f_dentry; } ;
struct linux_cdev {int refs; int ops; } ;
struct file_operations {int (* open ) (int ,struct linux_file*) ;} ;
struct file {int f_vnode; int f_flag; } ;
struct cdev {struct linux_cdev* si_drv1; } ;


 int DTYPE_DEV ;
 int ENXIO ;
 int finit (struct file*,int ,int ,struct linux_file*,int *) ;
 int kfree (struct linux_file*) ;
 int linux_cdev_deref (struct linux_cdev*) ;
 int linux_drop_fop (struct linux_cdev*) ;
 struct linux_file* linux_file_alloc () ;
 int linux_get_fop (struct linux_file*,struct file_operations const**,struct linux_cdev**) ;
 int linux_set_current (struct thread*) ;
 int linuxfileops ;
 int refcount_acquire (int *) ;
 int stub1 (int ,struct linux_file*) ;
 int vhold (int ) ;

__attribute__((used)) static int
linux_dev_fdopen(struct cdev *dev, int fflags, struct thread *td,
    struct file *file)
{
 struct linux_cdev *ldev;
 struct linux_file *filp;
 const struct file_operations *fop;
 int error;

 ldev = dev->si_drv1;

 filp = linux_file_alloc();
 filp->f_dentry = &filp->f_dentry_store;
 filp->f_op = ldev->ops;
 filp->f_mode = file->f_flag;
 filp->f_flags = file->f_flag;
 filp->f_vnode = file->f_vnode;
 filp->_file = file;
 refcount_acquire(&ldev->refs);
 filp->f_cdev = ldev;

 linux_set_current(td);
 linux_get_fop(filp, &fop, &ldev);

 if (fop->open != ((void*)0)) {
  error = -fop->open(file->f_vnode, filp);
  if (error != 0) {
   linux_drop_fop(ldev);
   linux_cdev_deref(filp->f_cdev);
   kfree(filp);
   return (error);
  }
 }


 vhold(filp->f_vnode);


 finit(file, filp->f_mode, DTYPE_DEV, filp, &linuxfileops);
 linux_drop_fop(ldev);
 return (ENXIO);
}
