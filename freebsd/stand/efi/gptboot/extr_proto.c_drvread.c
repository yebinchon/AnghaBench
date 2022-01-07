
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
struct dsk {scalar_t__ devinfo; } ;
struct TYPE_7__ {TYPE_3__* dev; } ;
typedef TYPE_2__ dev_info_t ;
typedef unsigned int daddr_t ;
struct TYPE_8__ {scalar_t__ (* ReadBlocks ) (TYPE_3__*,int ,unsigned int,int,void*) ;TYPE_1__* Media; } ;
struct TYPE_6__ {unsigned int BlockSize; int MediaId; } ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_3__ EFI_BLOCK_IO ;


 unsigned int DEV_BSIZE ;
 int DPRINTF (char*,TYPE_3__*,int ,int ,int,int ) ;
 int EFI_ERROR_CODE (scalar_t__) ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ stub1 (TYPE_3__*,int ,unsigned int,int,void*) ;

int
drvread(struct dsk *dskp, void *buf, daddr_t lba, unsigned nblk)
{
 int size;
 EFI_STATUS status;
 dev_info_t *devinfo = (dev_info_t *)dskp->devinfo;
 EFI_BLOCK_IO *dev = devinfo->dev;

 lba = lba / (dev->Media->BlockSize / DEV_BSIZE);
 size = nblk * DEV_BSIZE;

 status = dev->ReadBlocks(dev, dev->Media->MediaId, lba, size, buf);
 if (status != EFI_SUCCESS) {
  DPRINTF("dskread: failed dev: %p, id: %u, lba: %ju, size: %d, "
      "status: %lu\n", devinfo->dev,
      dev->Media->MediaId, (uintmax_t)lba, size,
      EFI_ERROR_CODE(status));
  return (-1);
 }

 return (0);
}
