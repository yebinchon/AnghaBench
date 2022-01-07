
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* d_dev; int d_unit; } ;
struct disk_devdesc {scalar_t__ d_slice; scalar_t__ d_partition; TYPE_2__ dd; } ;
struct TYPE_3__ {char* dv_name; } ;


 scalar_t__ D_PARTISGPT ;
 scalar_t__ D_PARTNONE ;
 scalar_t__ D_SLICENONE ;
 int sprintf (char*,char*,scalar_t__,...) ;
 int strcat (char*,char*) ;

char*
disk_fmtdev(struct disk_devdesc *dev)
{
 static char buf[128];
 char *cp;

 cp = buf + sprintf(buf, "%s%d", dev->dd.d_dev->dv_name, dev->dd.d_unit);
 if (dev->d_slice > D_SLICENONE) {
 }
 if (dev->d_partition > D_PARTNONE)
  cp += sprintf(cp, "%c", dev->d_partition + 'a');
 strcat(cp, ":");
 return (buf);
}
