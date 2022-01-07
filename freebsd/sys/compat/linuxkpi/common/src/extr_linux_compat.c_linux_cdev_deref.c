
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_cdev {int refs; } ;


 int kfree (struct linux_cdev*) ;
 scalar_t__ refcount_release (int *) ;

__attribute__((used)) static void
linux_cdev_deref(struct linux_cdev *ldev)
{

 if (refcount_release(&ldev->refs))
  kfree(ldev);
}
