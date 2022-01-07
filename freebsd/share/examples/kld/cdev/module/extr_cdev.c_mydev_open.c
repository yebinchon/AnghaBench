
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct cdev {int dummy; } ;


 int buf ;
 int dev2udev (struct cdev*) ;
 scalar_t__ len ;
 int memset (int *,char,int) ;
 int printf (char*,int ,int,int,struct proc*) ;

int
mydev_open(struct cdev *dev, int flag, int otyp, struct thread *td)
{
    struct proc *procp = td->td_proc;

    printf("mydev_open: dev_t=%lu, flag=%x, otyp=%x, procp=%p\n",
    dev2udev(dev), flag, otyp, procp);
    memset(&buf, '\0', 513);
    len = 0;
    return (0);
}
