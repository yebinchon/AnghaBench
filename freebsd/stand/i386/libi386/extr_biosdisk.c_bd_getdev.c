
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i386_devdesc {int dummy; } ;
struct TYPE_7__ {TYPE_1__* d_dev; int d_unit; } ;
struct disk_devdesc {int d_slice; int d_partition; TYPE_4__ dd; } ;
struct TYPE_6__ {int bd_sectors; int bd_sectorsize; scalar_t__ bd_type; } ;
typedef TYPE_2__ bdinfo_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;


 int ACDMAJOR ;
 scalar_t__ DEVT_CD ;
 scalar_t__ DEVT_DISK ;
 int DPRINTF (char*,int,...) ;
 scalar_t__ DT_ATAPI ;
 int FDMAJOR ;
 int MAKEBOOTDEV (int,int,int,int) ;
 int WDMAJOR ;
 int WFDMAJOR ;
 TYPE_2__* bd_get_bdinfo (TYPE_4__*) ;
 int bd_unit2bios (struct i386_devdesc*) ;
 int disk_close (struct disk_devdesc*) ;
 scalar_t__ disk_open (struct disk_devdesc*,int,int) ;
 char* getenv (char*) ;
 int strtol (char*,char**,int ) ;

int
bd_getdev(struct i386_devdesc *d)
{
 struct disk_devdesc *dev;
 bdinfo_t *bd;
 int biosdev;
 int major;
 int rootdev;
 char *nip, *cp;
 int i, unit, slice, partition;


 slice = 0;
 partition = 0;

 dev = (struct disk_devdesc *)d;
 bd = bd_get_bdinfo(&dev->dd);
 if (bd == ((void*)0))
  return (-1);

 biosdev = bd_unit2bios(d);
 DPRINTF("unit %d BIOS device %d", dev->dd.d_unit, biosdev);
 if (biosdev == -1)
  return (-1);

 if (dev->dd.d_dev->dv_type == DEVT_DISK) {
  if (disk_open(dev, bd->bd_sectors * bd->bd_sectorsize,
      bd->bd_sectorsize) != 0)
   return (-1);
  else
   disk_close(dev);
  slice = dev->d_slice + 1;
  partition = dev->d_partition;
 }

 if (biosdev < 0x80) {

  if (bd->bd_type == DT_ATAPI) {

   major = WFDMAJOR;
  } else {

   major = FDMAJOR;
  }
 } else {

  major = WDMAJOR;
 }

 unit = biosdev & 0x7f;

 if (dev->dd.d_dev->dv_type == DEVT_CD) {
  major = ACDMAJOR;
  unit = 0;
 }


 if ((nip = getenv("root_disk_unit")) != ((void*)0)) {
  i = strtol(nip, &cp, 0);

  if ((cp != nip) && (*cp == 0))
   unit = i;
 }

 rootdev = MAKEBOOTDEV(major, slice, unit, partition);
 DPRINTF("dev is 0x%x\n", rootdev);
 return (rootdev);
}
