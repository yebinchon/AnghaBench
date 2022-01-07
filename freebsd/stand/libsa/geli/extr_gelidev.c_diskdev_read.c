
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_2__ dd; } ;
typedef int off_t ;
struct TYPE_3__ {int (* dv_strategy ) (struct disk_devdesc*,int ,int,size_t,void*,int *) ;} ;


 int DEV_BSIZE ;
 int F_READ ;
 int stub1 (struct disk_devdesc*,int ,int,size_t,void*,int *) ;

__attribute__((used)) static int
diskdev_read(void *vdev, void *readpriv, off_t offbytes,
    void *buf, size_t sizebytes)
{
 struct disk_devdesc *ddev;

 ddev = (struct disk_devdesc *)readpriv;

 return (ddev->dd.d_dev->dv_strategy(ddev, F_READ, offbytes / DEV_BSIZE,
     sizebytes, buf, ((void*)0)));
}
