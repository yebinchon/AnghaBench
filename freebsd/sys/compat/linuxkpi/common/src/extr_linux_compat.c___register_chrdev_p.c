
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct linux_cdev {int kobj; struct file_operations const* ops; } ;
struct file_operations {int dummy; } ;
typedef int gid_t ;


 int cdev_add_ext (struct linux_cdev*,int ,int ,int ,int) ;
 struct linux_cdev* cdev_alloc () ;
 int kobject_set_name (int *,char const*) ;
 int makedev (unsigned int,int) ;

int
__register_chrdev_p(unsigned int major, unsigned int baseminor,
    unsigned int count, const char *name,
    const struct file_operations *fops, uid_t uid,
    gid_t gid, int mode)
{
 struct linux_cdev *cdev;
 int ret = 0;
 int i;

 for (i = baseminor; i < baseminor + count; i++) {
  cdev = cdev_alloc();
  cdev->ops = fops;
  kobject_set_name(&cdev->kobj, name);

  ret = cdev_add_ext(cdev, makedev(major, i), uid, gid, mode);
  if (ret != 0)
   break;
 }
 return (ret);
}
