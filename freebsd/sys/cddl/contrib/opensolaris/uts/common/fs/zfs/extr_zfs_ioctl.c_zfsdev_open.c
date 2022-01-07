
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int FEXCL ;
 int cr ;
 scalar_t__ getminor (struct cdev) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int otyp ;
 int spa_namespace_lock ;
 int zfs_ctldev_init (struct cdev*) ;
 int zvol_open (struct cdev*,int,int ,int ) ;

__attribute__((used)) static int
zfsdev_open(struct cdev *devp, int flag, int mode, struct thread *td)
{
 int error = 0;







 if (flag & FEXCL) {
  mutex_enter(&spa_namespace_lock);
  error = zfs_ctldev_init(devp);
  mutex_exit(&spa_namespace_lock);
 }

 return (error);
}
