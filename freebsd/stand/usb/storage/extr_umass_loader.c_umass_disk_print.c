
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disk_devdesc {int d_partition; int d_slice; scalar_t__ d_unit; TYPE_1__* d_dev; } ;
typedef int dev ;
struct TYPE_2__ {char* dv_name; } ;


 int D_PARTNONE ;
 int D_SLICENONE ;
 int disk_close (struct disk_devdesc*) ;
 scalar_t__ disk_print (struct disk_devdesc*,char*,int) ;
 int memset (struct disk_devdesc*,int ,int) ;
 scalar_t__ pager_output (char*) ;
 int printf (char*,char*) ;
 scalar_t__ ret ;
 TYPE_1__ umass_disk ;
 scalar_t__ umass_disk_open_sub (struct disk_devdesc*) ;

__attribute__((used)) static int
umass_disk_print(int verbose)
{
 struct disk_devdesc dev;

 printf("%s devices:", umass_disk.dv_name);
 if (pager_output("\n") != 0)
  return (1);

 memset(&dev, 0, sizeof(dev));

 ret = pager_output("    umass0   UMASS device\n");
 if (ret != 0)
  return (ret);
 dev.d_dev = &umass_disk;
 dev.d_unit = 0;
 dev.d_slice = D_SLICENONE;
 dev.d_partition = D_PARTNONE;

 if (umass_disk_open_sub(&dev) == 0) {
  ret = disk_print(&dev, "    umass0", verbose);
  disk_close(&dev);
 }
 return (ret);
}
