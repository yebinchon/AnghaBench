
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {int d_offset; TYPE_4__ dd; } ;
struct bcache_devdata {int dv_cache; void* dv_devdata; int dv_strategy; } ;
typedef int daddr_t ;
struct TYPE_6__ {int bd_sectorsize; int bd_bcache; } ;
typedef TYPE_2__ bdinfo_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;


 int BIOSDISK_SECSIZE ;
 scalar_t__ DEVT_DISK ;
 int EINVAL ;
 int bcache_strategy (struct bcache_devdata*,int,int,size_t,char*,size_t*) ;
 TYPE_2__* bd_get_bdinfo (TYPE_4__*) ;
 int bd_realstrategy ;

__attribute__((used)) static int
bd_strategy(void *devdata, int rw, daddr_t dblk, size_t size,
    char *buf, size_t *rsize)
{
 bdinfo_t *bd;
 struct bcache_devdata bcd;
 struct disk_devdesc *dev;
 daddr_t offset;

 dev = (struct disk_devdesc *)devdata;
 bd = bd_get_bdinfo(&dev->dd);
 if (bd == ((void*)0))
  return (EINVAL);

 bcd.dv_strategy = bd_realstrategy;
 bcd.dv_devdata = devdata;
 bcd.dv_cache = bd->bd_bcache;

 offset = 0;
 if (dev->dd.d_dev->dv_type == DEVT_DISK) {

  offset = dev->d_offset * bd->bd_sectorsize;
  offset /= BIOSDISK_SECSIZE;
 }
 return (bcache_strategy(&bcd, rw, dblk + offset, size,
     buf, rsize));
}
