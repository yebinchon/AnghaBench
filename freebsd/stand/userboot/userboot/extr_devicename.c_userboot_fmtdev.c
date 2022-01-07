
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devdesc {TYPE_1__* d_dev; int d_unit; } ;
struct TYPE_2__ {int dv_type; char* dv_name; } ;







 char* disk_fmtdev (void*) ;
 int sprintf (char*,char*,char*,int ) ;
 int strcpy (char*,char*) ;
 char* zfs_fmtdev (void*) ;

char *
userboot_fmtdev(void *vdev)
{
    struct devdesc *dev = (struct devdesc *)vdev;
    static char buf[128];

    switch(dev->d_dev->dv_type) {
    case 129:
 strcpy(buf, "(no device)");
 break;

    case 132:
 sprintf(buf, "%s%d:", dev->d_dev->dv_name, dev->d_unit);
 break;

    case 131:
 return (disk_fmtdev(vdev));

    case 130:
 sprintf(buf, "%s%d:", dev->d_dev->dv_name, dev->d_unit);
 break;

    case 128:



 sprintf(buf, "%s%d:", dev->d_dev->dv_name, dev->d_unit);

 break;
    }
    return(buf);
}
