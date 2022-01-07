
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_long ;
typedef int u_int ;
struct open_file {scalar_t__ f_devdata; } ;
struct disk_devdesc {int dummy; } ;
struct TYPE_2__ {int bsize; int blocks; } ;




 int ENOTTY ;
 TYPE_1__ SI (struct disk_devdesc*) ;
 int disk_ioctl (struct disk_devdesc*,int ,void*) ;

__attribute__((used)) static int
stor_ioctl(struct open_file *f, u_long cmd, void *data)
{
 struct disk_devdesc *dev;
 int rc;

 dev = (struct disk_devdesc *)f->f_devdata;
 rc = disk_ioctl(dev, cmd, data);
 if (rc != ENOTTY)
  return (rc);

 switch (cmd) {
 case 128:
  *(u_int *)data = SI(dev).bsize;
  break;
 case 129:
  *(uint64_t *)data = SI(dev).bsize * SI(dev).blocks;
  break;
 default:
  return (ENOTTY);
 }
 return (0);
}
