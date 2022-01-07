
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct disklabel {scalar_t__ d_magic; scalar_t__ d_magic2; TYPE_3__* d_partitions; } ;
struct TYPE_10__ {scalar_t__ partoff; TYPE_2__* dev; } ;
typedef TYPE_4__ dev_info_t ;
struct TYPE_9__ {scalar_t__ p_offset; } ;
struct TYPE_8__ {TYPE_1__* Media; } ;
struct TYPE_7__ {int BlockSize; } ;


 int BSD_LABEL_BUFFER ;
 size_t BSD_LABEL_OFFSET ;
 scalar_t__ BSD_MAGIC ;
 int DEV_BSIZE ;
 int __dmadat ;
 TYPE_4__* devinfo ;
 int * dmadat ;
 scalar_t__ dskread (char*,int ,int) ;
 int fsread (int ,int *,int ) ;

__attribute__((used)) static int
init_dev(dev_info_t* dev)
{
 char buffer[BSD_LABEL_BUFFER];
 struct disklabel *dl;
 uint64_t bs;
 int ok;

 devinfo = dev;
 dmadat = &__dmadat;






 devinfo->partoff = 0;
 ok = fsread(0, ((void*)0), 0);
 if (ok >= 0)
  return (ok);
 if (dskread(buffer, 0, BSD_LABEL_BUFFER / DEV_BSIZE) != 0)
  return (-1);
 dl = ((void*)0);
 bs = devinfo->dev->Media->BlockSize;
 if (bs != 0 && bs <= BSD_LABEL_BUFFER / 2)
  dl = (struct disklabel *)&buffer[bs];
 if (dl == ((void*)0) || dl->d_magic != BSD_MAGIC || dl->d_magic2 != BSD_MAGIC)
  dl = (struct disklabel *)&buffer[BSD_LABEL_OFFSET];
 if (dl->d_magic != BSD_MAGIC || dl->d_magic2 != BSD_MAGIC ||
     dl->d_partitions[0].p_offset == 0)
  return (-1);
 devinfo->partoff = dl->d_partitions[0].p_offset;
 return (fsread(0, ((void*)0), 0));
}
