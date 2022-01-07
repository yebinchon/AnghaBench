
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int size; } ;
struct zfsdsk {TYPE_1__ dsk; int * gdev; } ;
typedef int off_t ;
typedef int daddr_t ;
struct TYPE_4__ {scalar_t__ rdbuf; } ;


 int DEV_BSIZE ;
 int DEV_GELIBOOT_BSIZE ;
 int READ_BUF_SIZE ;
 TYPE_2__* dmadat ;
 scalar_t__ drvread (TYPE_1__*,scalar_t__,int,unsigned int) ;
 scalar_t__ geli_read (int *,int,scalar_t__,unsigned int) ;
 int memcpy (char*,scalar_t__,unsigned int) ;
 int printf (char*,int,unsigned int,int) ;
 int rounddown2 (int,int ) ;
 int roundup2 (unsigned int,int ) ;

__attribute__((used)) static int
vdev_read(void *xvdev, void *priv, off_t off, void *buf, size_t bytes)
{
 char *p;
 daddr_t lba, alignlba;
 off_t diff;
 unsigned int nb, alignnb;
 struct zfsdsk *zdsk = (struct zfsdsk *) priv;

 if ((off & (DEV_BSIZE - 1)) || (bytes & (DEV_BSIZE - 1)))
  return -1;

 p = buf;
 lba = off / DEV_BSIZE;
 lba += zdsk->dsk.start;




 alignlba = rounddown2(off, DEV_GELIBOOT_BSIZE) / DEV_BSIZE;




 alignlba += zdsk->dsk.start;
 diff = (lba - alignlba) * DEV_BSIZE;

 while (bytes > 0) {
  nb = bytes / DEV_BSIZE;




  if (nb > (READ_BUF_SIZE - diff) / DEV_BSIZE)
   nb = (READ_BUF_SIZE - diff) / DEV_BSIZE;




  alignnb = roundup2(nb * DEV_BSIZE + diff, DEV_GELIBOOT_BSIZE)
      / DEV_BSIZE;

  if (zdsk->dsk.size > 0 && alignlba + alignnb >
      zdsk->dsk.size + zdsk->dsk.start) {
   printf("Shortening read at %lld from %d to %lld\n",
       alignlba, alignnb,
       (zdsk->dsk.size + zdsk->dsk.start) - alignlba);
   alignnb = (zdsk->dsk.size + zdsk->dsk.start) - alignlba;
  }

  if (drvread(&zdsk->dsk, dmadat->rdbuf, alignlba, alignnb))
   return -1;
  memcpy(p, dmadat->rdbuf + diff, nb * DEV_BSIZE);
  p += nb * DEV_BSIZE;
  lba += nb;
  alignlba += alignnb;
  bytes -= nb * DEV_BSIZE;

  diff = 0;
 }

 return 0;
}
