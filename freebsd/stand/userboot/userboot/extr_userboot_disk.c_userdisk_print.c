
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d_unit; TYPE_2__* d_dev; } ;
struct disk_devdesc {int d_partition; int d_slice; TYPE_1__ dd; } ;
typedef int line ;
struct TYPE_6__ {int sectorsize; int mediasize; } ;
struct TYPE_5__ {char* dv_name; } ;


 int D_PARTNONE ;
 int D_SLICENONE ;
 int disk_close (struct disk_devdesc*) ;
 scalar_t__ disk_open (struct disk_devdesc*,int ,int ) ;
 int disk_print (struct disk_devdesc*,char*,int) ;
 int pager_output (char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 TYPE_3__* ud_info ;
 TYPE_2__ userboot_disk ;
 int userdisk_maxunit ;

__attribute__((used)) static int
userdisk_print(int verbose)
{
 struct disk_devdesc dev;
 char line[80];
 int i, ret = 0;

 if (userdisk_maxunit == 0)
  return (0);

 printf("%s devices:", userboot_disk.dv_name);
 if ((ret = pager_output("\n")) != 0)
  return (ret);

 for (i = 0; i < userdisk_maxunit; i++) {
  snprintf(line, sizeof(line),
      "    disk%d:   Guest drive image\n", i);
  ret = pager_output(line);
  if (ret != 0)
   break;
  dev.dd.d_dev = &userboot_disk;
  dev.dd.d_unit = i;
  dev.d_slice = D_SLICENONE;
  dev.d_partition = D_PARTNONE;
  if (disk_open(&dev, ud_info[i].mediasize,
      ud_info[i].sectorsize) == 0) {
   snprintf(line, sizeof(line), "    disk%d", i);
   ret = disk_print(&dev, line, verbose);
   disk_close(&dev);
   if (ret != 0)
    break;
  }
 }
 return (ret);
}
