
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t d_unit; } ;
struct disk_devdesc {scalar_t__ d_offset; TYPE_1__ dd; } ;
struct bcache_devdata {int dv_cache; void* dv_devdata; int dv_strategy; } ;
typedef scalar_t__ daddr_t ;
struct TYPE_4__ {int ud_bcache; } ;


 int bcache_strategy (struct bcache_devdata*,int,scalar_t__,size_t,char*,size_t*) ;
 TYPE_2__* ud_info ;
 int userdisk_realstrategy ;

__attribute__((used)) static int
userdisk_strategy(void *devdata, int rw, daddr_t dblk, size_t size,
    char *buf, size_t *rsize)
{
 struct bcache_devdata bcd;
 struct disk_devdesc *dev;

 dev = (struct disk_devdesc *)devdata;
 bcd.dv_strategy = userdisk_realstrategy;
 bcd.dv_devdata = devdata;
 bcd.dv_cache = ud_info[dev->dd.d_unit].ud_bcache;
 return (bcache_strategy(&bcd, rw, dblk + dev->d_offset,
     size, buf, rsize));
}
