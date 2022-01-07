
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct open_file {scalar_t__ f_devdata; } ;
struct TYPE_6__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_2__ dd; } ;
struct devdesc {int dummy; } ;
struct TYPE_7__ {scalar_t__ pd_open; int * pd_bcache; int * pd_blkio; } ;
typedef TYPE_3__ pdinfo_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;


 scalar_t__ DEVT_DISK ;
 int EINVAL ;
 int bcache_free (int *) ;
 int disk_close (struct disk_devdesc*) ;
 TYPE_3__* efiblk_get_pdinfo (struct devdesc*) ;

__attribute__((used)) static int
efipart_close(struct open_file *f)
{
 struct disk_devdesc *dev;
 pdinfo_t *pd;

 dev = (struct disk_devdesc *)(f->f_devdata);
 if (dev == ((void*)0))
  return (EINVAL);

 pd = efiblk_get_pdinfo((struct devdesc *)dev);
 if (pd == ((void*)0))
  return (EINVAL);

 pd->pd_open--;
 if (pd->pd_open == 0) {
  pd->pd_blkio = ((void*)0);
  bcache_free(pd->pd_bcache);
  pd->pd_bcache = ((void*)0);
 }
 if (dev->dd.d_dev->dv_type == DEVT_DISK)
  return (disk_close(dev));
 return (0);
}
