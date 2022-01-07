
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_cdev {int siref; } ;


 int LDEV_SI_DTR ;
 int LDEV_SI_REF ;
 int MPASS (int) ;
 int atomic_subtract_int (int*,int ) ;

__attribute__((used)) static void
linux_drop_fop(struct linux_cdev *ldev)
{

 if (ldev == ((void*)0))
  return;
 MPASS((ldev->siref & ~LDEV_SI_DTR) != 0);
 atomic_subtract_int(&ldev->siref, LDEV_SI_REF);
}
