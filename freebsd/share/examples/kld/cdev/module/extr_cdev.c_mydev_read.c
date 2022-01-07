
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {TYPE_1__* uio_iov; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int iov_base; } ;


 int buf ;
 int copystr (int *,int ,int,scalar_t__*) ;
 int dev2udev (struct cdev*) ;
 scalar_t__ len ;
 int printf (char*,int ,struct uio*,int) ;

int
mydev_read(struct cdev *dev, struct uio *uio, int ioflag)
{
    int err = 0;

    printf("mydev_read: dev_t=%lu, uio=%p, ioflag=%d\n",
 dev2udev(dev), uio, ioflag);

    if (len <= 0) {
 err = -1;
    } else {
 copystr(&buf, uio->uio_iov->iov_base, 513, &len);
    }
    return(err);
}
