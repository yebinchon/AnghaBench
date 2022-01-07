
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct open_disk {int sectorsize; } ;
struct TYPE_4__ {TYPE_1__* d_dev; scalar_t__ d_opendata; } ;
struct disk_devdesc {scalar_t__ d_offset; TYPE_2__ dd; } ;
struct TYPE_3__ {int (* dv_strategy ) (struct disk_devdesc*,int ,scalar_t__,int,void*,int *) ;} ;


 int F_READ ;
 int stub1 (struct disk_devdesc*,int ,scalar_t__,int,void*,int *) ;

int
disk_read(struct disk_devdesc *dev, void *buf, uint64_t offset, u_int blocks)
{
 struct open_disk *od;
 int ret;

 od = (struct open_disk *)dev->dd.d_opendata;
 ret = dev->dd.d_dev->dv_strategy(dev, F_READ, dev->d_offset + offset,
     blocks * od->sectorsize, buf, ((void*)0));

 return (ret);
}
