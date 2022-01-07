
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_long ;
typedef int u_int ;
struct open_disk {int sectorsize; int mediasize; int entrysize; } ;
struct TYPE_2__ {struct open_disk* d_opendata; } ;
struct disk_devdesc {int d_offset; TYPE_1__ dd; } ;




 int ENOTTY ;

int
disk_ioctl(struct disk_devdesc *dev, u_long cmd, void *data)
{
 struct open_disk *od = dev->dd.d_opendata;

 if (od == ((void*)0))
  return (ENOTTY);

 switch (cmd) {
 case 128:
  *(u_int *)data = od->sectorsize;
  break;
 case 129:
  if (dev->d_offset == 0)
   *(uint64_t *)data = od->mediasize;
  else
   *(uint64_t *)data = od->entrysize * od->sectorsize;
  break;
 default:
  return (ENOTTY);
 }

 return (0);
}
