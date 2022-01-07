
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_cdev {int dev; } ;
struct inode {TYPE_1__* v_rdev; } ;
struct TYPE_2__ {struct linux_cdev* si_drv1; int * si_devsw; } ;


 int linuxcdevsw ;
 unsigned int minor (int ) ;

unsigned int
linux_iminor(struct inode *inode)
{
 struct linux_cdev *ldev;

 if (inode == ((void*)0) || inode->v_rdev == ((void*)0) ||
     inode->v_rdev->si_devsw != &linuxcdevsw)
  return (-1U);
 ldev = inode->v_rdev->si_drv1;
 if (ldev == ((void*)0))
  return (-1U);

 return (minor(ldev->dev));
}
