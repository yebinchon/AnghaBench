
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_dev {int dummy; } ;


 int CUSE_IOCTL_DESTROY_DEV ;
 int CUSE_LOCK () ;
 int CUSE_UNLOCK () ;
 int TAILQ_REMOVE (int *,struct cuse_dev*,int ) ;
 int entry ;
 scalar_t__ f_cuse ;
 int free (struct cuse_dev*) ;
 int h_cuse ;
 int ioctl (scalar_t__,int ,struct cuse_dev**) ;

void
cuse_dev_destroy(struct cuse_dev *cdev)
{
 int error;

 if (f_cuse < 0)
  return;

 CUSE_LOCK();
 TAILQ_REMOVE(&h_cuse, cdev, entry);
 CUSE_UNLOCK();

 error = ioctl(f_cuse, CUSE_IOCTL_DESTROY_DEV, &cdev);
 if (error)
  return;

 free(cdev);
}
