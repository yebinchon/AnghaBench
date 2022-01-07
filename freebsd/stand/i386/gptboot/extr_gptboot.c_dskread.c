
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int daddr_t ;
struct TYPE_4__ {scalar_t__ start; } ;
struct TYPE_3__ {int * gdev; TYPE_2__ dsk; } ;


 unsigned int DEV_BSIZE ;
 int drvread (TYPE_2__*,void*,scalar_t__,unsigned int) ;
 TYPE_1__ gdsk ;
 scalar_t__ geli_read (int *,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int
dskread(void *buf, daddr_t lba, unsigned nblk)
{
 int err;

 err = drvread(&gdsk.dsk, buf, lba + gdsk.dsk.start, nblk);
 return (err);
}
