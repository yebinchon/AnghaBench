
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {TYPE_1__* uio_iov; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int iov_base; } ;


 int buf ;
 int copyinstr (int ,int *,int,int *) ;
 int dev2udev (struct cdev*) ;
 int len ;
 int printf (char*,...) ;

int
mydev_write(struct cdev *dev, struct uio *uio, int ioflag)
{
    int err = 0;

    printf("mydev_write: dev_t=%lu, uio=%p, ioflag=%d\n",
 dev2udev(dev), uio, ioflag);

    err = copyinstr(uio->uio_iov->iov_base, &buf, 512, &len);
    if (err != 0) {
 printf("Write to \"cdev\" failed.\n");
    }
    return(err);
}
