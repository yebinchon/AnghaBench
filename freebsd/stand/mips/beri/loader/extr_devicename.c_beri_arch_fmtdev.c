
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* d_dev; int d_unit; } ;
struct disk_devdesc {TYPE_2__ dd; } ;
struct TYPE_3__ {int dv_type; char* dv_name; } ;







 char* disk_fmtdev (void*) ;
 int sprintf (char*,char*,char*,int ) ;
 int strcpy (char*,char*) ;

char *
beri_arch_fmtdev(void *vdev)
{
    struct disk_devdesc *dev = (struct disk_devdesc *)vdev;
    static char buf[128];

    switch(dev->dd.d_dev->dv_type) {
    case 129:
 strcpy(buf, "(no device)");
 break;

    case 132:
 sprintf(buf, "%s%d:", dev->dd.d_dev->dv_name, dev->dd.d_unit);
 break;

    case 131:
 return (disk_fmtdev(vdev));

    case 130:
    case 128:
 sprintf(buf, "%s%d:", dev->dd.d_dev->dv_name, dev->dd.d_unit);
 break;
    }
    return(buf);
}
