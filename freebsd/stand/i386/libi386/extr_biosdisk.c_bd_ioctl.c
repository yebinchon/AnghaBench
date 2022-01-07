
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_long ;
struct open_file {scalar_t__ f_devdata; } ;
struct TYPE_7__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_4__ dd; } ;
struct TYPE_6__ {int bd_sectorsize; int bd_sectors; } ;
typedef TYPE_2__ bdinfo_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;


 scalar_t__ DEVT_DISK ;


 int EIO ;
 int ENOTTY ;
 TYPE_2__* bd_get_bdinfo (TYPE_4__*) ;
 int disk_ioctl (struct disk_devdesc*,int ,void*) ;

__attribute__((used)) static int
bd_ioctl(struct open_file *f, u_long cmd, void *data)
{
 bdinfo_t *bd;
 struct disk_devdesc *dev;
 int rc;

 dev = (struct disk_devdesc *)f->f_devdata;
 bd = bd_get_bdinfo(&dev->dd);
 if (bd == ((void*)0))
  return (EIO);

 if (dev->dd.d_dev->dv_type == DEVT_DISK) {
  rc = disk_ioctl(dev, cmd, data);
  if (rc != ENOTTY)
   return (rc);
 }

 switch (cmd) {
 case 128:
  *(uint32_t *)data = bd->bd_sectorsize;
  break;
 case 129:
  *(uint64_t *)data = bd->bd_sectors * bd->bd_sectorsize;
  break;
 default:
  return (ENOTTY);
 }
 return (0);
}
