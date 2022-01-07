
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;



 int EINVAL ;
 int dev2udev (struct cdev*) ;
 int printf (char*,...) ;

int
mydev_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{
    int error = 0;
    struct proc *procp = td->td_proc;

    printf("mydev_ioctl: dev_t=%lu, cmd=%lx, arg=%p, mode=%x procp=%p\n",
    dev2udev(dev), cmd, arg, mode, procp);

    switch(cmd) {
    case 128:
 printf("you called mydev_ioctl CDEV_IOCTL1\n");
 break;
    default:
 printf("No such ioctl for me!\n");
 error = EINVAL;
 break;
    }
    return (error);
}
