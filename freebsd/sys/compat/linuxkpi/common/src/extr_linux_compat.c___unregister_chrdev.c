
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_cdev {int dummy; } ;


 int cdev_del (struct linux_cdev*) ;
 struct linux_cdev* linux_find_cdev (char const*,unsigned int,int) ;

void
__unregister_chrdev(unsigned int major, unsigned int baseminor,
    unsigned int count, const char *name)
{
 struct linux_cdev *cdevp;
 int i;

 for (i = baseminor; i < baseminor + count; i++) {
  cdevp = linux_find_cdev(name, major, i);
  if (cdevp != ((void*)0))
   cdev_del(cdevp);
 }
}
