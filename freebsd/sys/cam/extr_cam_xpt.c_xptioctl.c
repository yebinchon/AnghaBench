
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 int ENOTTY ;
 int cam_compat_ioctl (struct cdev*,int ,int ,int,struct thread*,int (*) (struct cdev*,int ,int ,int,struct thread*)) ;
 int xptdoioctl (struct cdev*,int ,int ,int,struct thread*) ;

__attribute__((used)) static int
xptioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
 int error;

 if ((error = xptdoioctl(dev, cmd, addr, flag, td)) == ENOTTY) {
  error = cam_compat_ioctl(dev, cmd, addr, flag, td, xptdoioctl);
 }
 return (error);
}
