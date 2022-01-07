
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_cdev {int siref; int * cdev; } ;


 int LDEV_SI_DTR ;
 int MPASS (int) ;
 int atomic_load_int (int*) ;
 int atomic_set_int (int*,int) ;
 int destroy_dev (int *) ;
 int hz ;
 int pause (char*,int) ;

void
linux_destroy_dev(struct linux_cdev *ldev)
{

 if (ldev->cdev == ((void*)0))
  return;

 MPASS((ldev->siref & LDEV_SI_DTR) == 0);
 atomic_set_int(&ldev->siref, LDEV_SI_DTR);
 while ((atomic_load_int(&ldev->siref) & ~LDEV_SI_DTR) != 0)
  pause("ldevdtr", hz / 4);

 destroy_dev(ldev->cdev);
 ldev->cdev = ((void*)0);
}
