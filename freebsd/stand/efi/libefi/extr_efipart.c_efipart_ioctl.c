
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_long ;
typedef int u_int ;
struct open_file {scalar_t__ f_devdata; } ;
struct TYPE_8__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_2__ dd; } ;
struct devdesc {int dummy; } ;
struct TYPE_11__ {TYPE_4__* pd_blkio; } ;
typedef TYPE_5__ pdinfo_t ;
struct TYPE_10__ {TYPE_3__* Media; } ;
struct TYPE_9__ {int BlockSize; int LastBlock; } ;
struct TYPE_7__ {scalar_t__ dv_type; } ;


 scalar_t__ DEVT_DISK ;


 int EINVAL ;
 int ENOTTY ;
 int disk_ioctl (struct disk_devdesc*,int ,void*) ;
 TYPE_5__* efiblk_get_pdinfo (struct devdesc*) ;

__attribute__((used)) static int
efipart_ioctl(struct open_file *f, u_long cmd, void *data)
{
 struct disk_devdesc *dev;
 pdinfo_t *pd;
 int rc;

 dev = (struct disk_devdesc *)(f->f_devdata);
 if (dev == ((void*)0))
  return (EINVAL);

 pd = efiblk_get_pdinfo((struct devdesc *)dev);
 if (pd == ((void*)0))
  return (EINVAL);

 if (dev->dd.d_dev->dv_type == DEVT_DISK) {
  rc = disk_ioctl(dev, cmd, data);
  if (rc != ENOTTY)
   return (rc);
 }

 switch (cmd) {
 case 128:
  *(u_int *)data = pd->pd_blkio->Media->BlockSize;
  break;
 case 129:
  *(uint64_t *)data = pd->pd_blkio->Media->BlockSize *
      (pd->pd_blkio->Media->LastBlock + 1);
  break;
 default:
  return (ENOTTY);
 }

 return (0);
}
