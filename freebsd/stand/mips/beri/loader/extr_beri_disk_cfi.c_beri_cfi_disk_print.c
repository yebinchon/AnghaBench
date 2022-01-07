
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ d_unit; TYPE_2__* d_dev; } ;
struct disk_devdesc {int d_partition; int d_slice; TYPE_1__ dd; } ;
typedef int line ;
struct TYPE_4__ {char* dv_name; } ;


 int D_PARTNONE ;
 int D_SLICENONE ;
 TYPE_2__ beri_cfi_disk ;
 int cfi_get_mediasize () ;
 int cfi_get_sectorsize () ;
 int disk_close (struct disk_devdesc*) ;
 scalar_t__ disk_open (struct disk_devdesc*,int ,int ) ;
 int disk_print (struct disk_devdesc*,char*,int) ;
 int pager_output (char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int
beri_cfi_disk_print(int verbose)
{
 struct disk_devdesc dev;
 char line[80];
 int ret;

 printf("%s devices:", beri_cfi_disk.dv_name);
 if ((ret = pager_output("\n")) != 0)
  return (ret);

 snprintf(line, sizeof(line), "    cfi%d   CFI flash device\n", 0);
 ret = pager_output(line);
 if (ret != 0)
  return (ret);
 dev.dd.d_dev = &beri_cfi_disk;
 dev.dd.d_unit = 0;
 dev.d_slice = D_SLICENONE;
 dev.d_partition = D_PARTNONE;
 if (disk_open(&dev, cfi_get_mediasize(), cfi_get_sectorsize()) == 0) {
  snprintf(line, sizeof(line), "    cfi%d", 0);
  ret = disk_print(&dev, line, verbose);
  disk_close(&dev);
 }

 return (ret);
}
