
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int daddr_t ;
struct TYPE_2__ {int * device; } ;


 int EINVAL ;
 int ENXIO ;
 int EROFS ;
 int F_MASK ;
 int F_READ ;
 int F_WRITE ;
 TYPE_1__ umass_uaa ;
 scalar_t__ usb_msc_read_10 (int *,int ,int ,size_t,char*) ;
 scalar_t__ usb_msc_write_10 (int *,int ,int ,size_t,char*) ;

__attribute__((used)) static int
umass_disk_strategy(void *devdata, int flag, daddr_t dblk, size_t size,
    char *buf, size_t *rsizep)
{
 if (umass_uaa.device == ((void*)0))
  return (ENXIO);
 if (rsizep != ((void*)0))
  *rsizep = 0;

 flag &= F_MASK;
 if (flag == F_WRITE) {
  if (usb_msc_write_10(umass_uaa.device, 0, dblk, size >> 9, buf) != 0)
   return (EINVAL);
 } else if (flag == F_READ) {
  if (usb_msc_read_10(umass_uaa.device, 0, dblk, size >> 9, buf) != 0)
   return (EINVAL);
 } else {
  return (EROFS);
 }

 if (rsizep != ((void*)0))
  *rsizep = size;
 return (0);
}
