
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int const u_long ;
struct open_file {scalar_t__ f_devdata; } ;
struct disk_devdesc {int dummy; } ;
struct TYPE_2__ {int device; } ;




 int EINVAL ;
 int ENOTTY ;
 int ENXIO ;
 int disk_ioctl (struct disk_devdesc*,int const,void*) ;
 TYPE_1__ umass_uaa ;
 int usb_msc_read_capacity (int ,int ,int *,int *) ;

__attribute__((used)) static int
umass_disk_ioctl(struct open_file *f, u_long cmd, void *buf)
{
 struct disk_devdesc *dev;
 uint32_t nblock;
 uint32_t blocksize;
 int rc;

 dev = (struct disk_devdesc *)(f->f_devdata);
 if (dev == ((void*)0))
  return (EINVAL);

 rc = disk_ioctl(dev, cmd, buf);
 if (rc != ENOTTY)
  return (rc);

 switch (cmd) {
 case 128:
 case 129:
  if (usb_msc_read_capacity(umass_uaa.device, 0,
      &nblock, &blocksize) != 0)
   return (EINVAL);

  if (cmd == 129)
   *(uint64_t*)buf = nblock;
  else
   *(uint32_t*)buf = blocksize;

  return (0);
 default:
  return (ENXIO);
 }
}
