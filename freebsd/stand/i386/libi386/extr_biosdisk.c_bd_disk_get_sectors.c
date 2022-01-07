
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int d_unit; int d_dev; } ;
struct disk_devdesc {scalar_t__ d_offset; int d_partition; int d_slice; TYPE_3__ dd; } ;
struct TYPE_4__ {int bd_sectors; int bd_sectorsize; } ;
typedef TYPE_1__ bdinfo_t ;


 int DIOCGMEDIASIZE ;
 int D_PARTNONE ;
 int D_SLICENONE ;
 TYPE_1__* bd_get_bdinfo (TYPE_3__*) ;
 int disk_close (struct disk_devdesc*) ;
 int disk_ioctl (struct disk_devdesc*,int ,int*) ;
 scalar_t__ disk_open (struct disk_devdesc*,int,int) ;

__attribute__((used)) static uint64_t
bd_disk_get_sectors(struct disk_devdesc *dev)
{
 bdinfo_t *bd;
 struct disk_devdesc disk;
 uint64_t size;

 bd = bd_get_bdinfo(&dev->dd);
 if (bd == ((void*)0))
  return (0);

 disk.dd.d_dev = dev->dd.d_dev;
 disk.dd.d_unit = dev->dd.d_unit;
 disk.d_slice = D_SLICENONE;
 disk.d_partition = D_PARTNONE;
 disk.d_offset = 0;

 size = bd->bd_sectors * bd->bd_sectorsize;
 if (disk_open(&disk, size, bd->bd_sectorsize) == 0) {
  (void) disk_ioctl(&disk, DIOCGMEDIASIZE, &size);
  disk_close(&disk);
 }
 return (size / bd->bd_sectorsize);
}
