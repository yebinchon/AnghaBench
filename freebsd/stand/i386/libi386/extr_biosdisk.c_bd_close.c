
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct open_file {scalar_t__ f_devdata; } ;
struct TYPE_7__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_4__ dd; } ;
struct TYPE_6__ {scalar_t__ bd_open; int * bd_bcache; } ;
typedef TYPE_2__ bdinfo_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;


 scalar_t__ DEVT_DISK ;
 int EIO ;
 int bcache_free (int *) ;
 TYPE_2__* bd_get_bdinfo (TYPE_4__*) ;
 int disk_close (struct disk_devdesc*) ;

__attribute__((used)) static int
bd_close(struct open_file *f)
{
 struct disk_devdesc *dev;
 bdinfo_t *bd;
 int rc = 0;

 dev = (struct disk_devdesc *)f->f_devdata;
 bd = bd_get_bdinfo(&dev->dd);
 if (bd == ((void*)0))
  return (EIO);

 bd->bd_open--;
 if (bd->bd_open == 0) {
     bcache_free(bd->bd_bcache);
     bd->bd_bcache = ((void*)0);
 }
 if (dev->dd.d_dev->dv_type == DEVT_DISK)
  rc = disk_close(dev);
 return (rc);
}
