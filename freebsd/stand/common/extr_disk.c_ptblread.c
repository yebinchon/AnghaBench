
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct open_disk {int sectorsize; } ;
struct TYPE_4__ {TYPE_1__* d_dev; scalar_t__ d_opendata; } ;
struct disk_devdesc {TYPE_2__ dd; } ;
struct TYPE_3__ {int (* dv_strategy ) (struct disk_devdesc*,int,int,size_t,char*,int *) ;} ;


 int F_NORA ;
 int F_READ ;
 int stub1 (struct disk_devdesc*,int,int,size_t,char*,int *) ;

int
ptblread(void *d, void *buf, size_t blocks, uint64_t offset)
{
 struct disk_devdesc *dev;
 struct open_disk *od;

 dev = (struct disk_devdesc *)d;
 od = (struct open_disk *)dev->dd.d_opendata;






 offset *= (od->sectorsize / 512);




 return (dev->dd.d_dev->dv_strategy(dev, F_READ | F_NORA, offset,
     blocks * od->sectorsize, (char *)buf, ((void*)0)));
}
