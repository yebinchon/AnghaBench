
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct linux_file {struct file_operations* f_op; struct linux_cdev* f_cdev; } ;
struct linux_cdev {int siref; struct file_operations* ops; } ;
struct file_operations {int dummy; } ;


 int LDEV_SI_DTR ;
 scalar_t__ LDEV_SI_REF ;
 int MPASS (int) ;
 scalar_t__ atomic_fcmpset_int (int*,int*,scalar_t__) ;
 struct linux_cdev dummy_ldev ;

__attribute__((used)) static void
linux_get_fop(struct linux_file *filp, const struct file_operations **fop,
    struct linux_cdev **dev)
{
 struct linux_cdev *ldev;
 u_int siref;

 ldev = filp->f_cdev;
 *fop = filp->f_op;
 if (ldev != ((void*)0)) {
  for (siref = ldev->siref;;) {
   if ((siref & LDEV_SI_DTR) != 0) {
    ldev = &dummy_ldev;
    siref = ldev->siref;
    *fop = ldev->ops;
    MPASS((ldev->siref & LDEV_SI_DTR) == 0);
   } else if (atomic_fcmpset_int(&ldev->siref, &siref,
       siref + LDEV_SI_REF)) {
    break;
   }
  }
 }
 *dev = ldev;
}
