
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev_priv {scalar_t__ cdp_inode; } ;
struct cdev {int dummy; } ;
typedef int priv ;
typedef int kvm_t ;
typedef int dev_t ;


 int assert (int *) ;
 scalar_t__ cdev2priv (struct cdev*) ;
 scalar_t__ kvm_read_all (int *,unsigned long,struct cdev_priv*,int) ;
 int warnx (char*,struct cdev*) ;

dev_t
dev2udev(kvm_t *kd, struct cdev *dev)
{
 struct cdev_priv priv;

 assert(kd);
 if (kvm_read_all(kd, (unsigned long)cdev2priv(dev), &priv,
     sizeof(priv))) {
  return ((dev_t)priv.cdp_inode);
 } else {
  warnx("can't convert cdev *%p to a dev_t\n", dev);
  return (-1);
 }
}
