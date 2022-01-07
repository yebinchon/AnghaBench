
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int vdisk_size; int vdisk_sectorsz; } ;
typedef TYPE_3__ vdisk_info_t ;
typedef int uint64_t ;
typedef int u_long ;
typedef int u_int ;
struct open_file {scalar_t__ f_devdata; } ;
struct TYPE_5__ {TYPE_2__* d_dev; } ;
struct disk_devdesc {TYPE_1__ dd; } ;
struct devdesc {int dummy; } ;
struct TYPE_6__ {scalar_t__ dv_type; } ;


 scalar_t__ DEVT_DISK ;


 int EINVAL ;
 int ENOTTY ;
 int disk_ioctl (struct disk_devdesc*,int ,void*) ;
 TYPE_3__* vdisk_get_info (struct devdesc*) ;

__attribute__((used)) static int
vdisk_ioctl(struct open_file *f, u_long cmd, void *data)
{
 struct disk_devdesc *dev;
 vdisk_info_t *vd;
 int rc;

 dev = (struct disk_devdesc *)(f->f_devdata);
 if (dev == ((void*)0))
  return (EINVAL);
 vd = vdisk_get_info((struct devdesc *)dev);
 if (vd == ((void*)0))
  return (EINVAL);

 if (dev->dd.d_dev->dv_type == DEVT_DISK) {
  rc = disk_ioctl(dev, cmd, data);
  if (rc != ENOTTY)
   return (rc);
 }

 switch (cmd) {
 case 128:
  *(u_int *)data = vd->vdisk_sectorsz;
  break;
 case 129:
  *(uint64_t *)data = vd->vdisk_size;
  break;
 default:
  return (ENOTTY);
 }
 return (0);
}
