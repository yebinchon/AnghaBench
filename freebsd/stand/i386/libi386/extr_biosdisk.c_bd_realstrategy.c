
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_8__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {size_t d_offset; TYPE_5__ dd; } ;
typedef size_t daddr_t ;
typedef char* caddr_t ;
struct TYPE_7__ {int bd_flags; size_t bd_sectorsize; size_t bd_sectors; } ;
typedef TYPE_2__ bdinfo_t ;
struct TYPE_6__ {scalar_t__ dv_type; } ;


 int BD_NO_MEDIA ;
 int BD_RD ;
 int BD_WR ;
 size_t BIOSDISK_SECSIZE ;
 size_t BIO_BUFFER_SIZE ;
 scalar_t__ DEVT_DISK ;
 int DIOCGMEDIASIZE ;
 int DPRINTF (char*,...) ;
 int EIO ;
 int EROFS ;
 int F_MASK ;


 size_t INT_MAX ;
 char* PTOV (int ) ;
 int V86_IO_BUFFER ;
 size_t V86_IO_BUFFER_SIZE ;
 int bcopy (char*,char*,size_t) ;
 TYPE_2__* bd_get_bdinfo (TYPE_5__*) ;
 int bd_io (struct disk_devdesc*,TYPE_2__*,size_t,int,char*,int ) ;
 char* bio_alloc (size_t) ;
 int bio_free (char*,size_t) ;
 scalar_t__ disk_ioctl (struct disk_devdesc*,int ,size_t*) ;
 void* min (size_t,size_t) ;
 int panic (char*) ;
 int printf (char*,size_t,size_t) ;

__attribute__((used)) static int
bd_realstrategy(void *devdata, int rw, daddr_t dblk, size_t size,
    char *buf, size_t *rsize)
{
 struct disk_devdesc *dev = (struct disk_devdesc *)devdata;
 bdinfo_t *bd;
 uint64_t disk_blocks, offset, d_offset;
 size_t blks, blkoff, bsize, bio_size, rest;
 caddr_t bbuf = ((void*)0);
 int rc;

 bd = bd_get_bdinfo(&dev->dd);
 if (bd == ((void*)0) || (bd->bd_flags & BD_NO_MEDIA) == BD_NO_MEDIA)
  return (EIO);







 if (size == 0 || (size % BIOSDISK_SECSIZE) != 0) {
  printf("bd_strategy: %d bytes I/O not multiple of %d\n",
      size, BIOSDISK_SECSIZE);
  return (EIO);
 }

 DPRINTF("open_disk %p", dev);

 offset = dblk * BIOSDISK_SECSIZE;
 dblk = offset / bd->bd_sectorsize;
 blkoff = offset % bd->bd_sectorsize;







 if (size > INT_MAX) {
  DPRINTF("too large I/O: %zu bytes", size);
  return (EIO);
 }

 blks = size / bd->bd_sectorsize;
 if (blks == 0 || (size % bd->bd_sectorsize) != 0)
  blks++;

 if (dblk > dblk + blks)
  return (EIO);

 if (rsize)
  *rsize = 0;





 d_offset = 0;
 disk_blocks = 0;
 if (dev->dd.d_dev->dv_type == DEVT_DISK) {
  if (disk_ioctl(dev, DIOCGMEDIASIZE, &disk_blocks) == 0) {

   disk_blocks /= bd->bd_sectorsize;
  }
  d_offset = dev->d_offset;
 }
 if (disk_blocks == 0)
  disk_blocks = bd->bd_sectors - d_offset;


 if (dblk < d_offset || dblk >= d_offset + disk_blocks)
  return (EIO);




 if (dblk + blks >= d_offset + disk_blocks) {
  blks = d_offset + disk_blocks - dblk;
  size = blks * bd->bd_sectorsize;
  DPRINTF("short I/O %d", blks);
 }

 bio_size = min(BIO_BUFFER_SIZE, size);
 while (bio_size > bd->bd_sectorsize) {
  bbuf = bio_alloc(bio_size);
  if (bbuf != ((void*)0))
   break;
  bio_size -= bd->bd_sectorsize;
 }
 if (bbuf == ((void*)0)) {
  bio_size = V86_IO_BUFFER_SIZE;
  if (bio_size / bd->bd_sectorsize == 0)
   panic("BUG: Real mode buffer is too small");


  bbuf = PTOV(V86_IO_BUFFER);
 }
 rest = size;
 rc = 0;
 while (blks > 0) {
  int x = min(blks, bio_size / bd->bd_sectorsize);

  switch (rw & F_MASK) {
  case 129:
   DPRINTF("read %d from %lld to %p", x, dblk, buf);
   bsize = bd->bd_sectorsize * x - blkoff;
   if (rest < bsize)
    bsize = rest;

   if ((rc = bd_io(dev, bd, dblk, x, bbuf, BD_RD)) != 0) {
    rc = EIO;
    goto error;
   }

   bcopy(bbuf + blkoff, buf, bsize);
   break;
  case 128 :
   DPRINTF("write %d from %lld to %p", x, dblk, buf);
   if (blkoff != 0) {




    x = 1;
    bsize = bd->bd_sectorsize - blkoff;
    bsize = min(bsize, rest);
    rc = bd_io(dev, bd, dblk, x, bbuf, BD_RD);
   } else if (rest < bd->bd_sectorsize) {




    x = 1;
    bsize = rest;
    rc = bd_io(dev, bd, dblk, x, bbuf, BD_RD);
   } else {

    bsize = bd->bd_sectorsize * x;
   }




   bcopy(buf, bbuf + blkoff, bsize);
   if ((rc = bd_io(dev, bd, dblk, x, bbuf, BD_WR)) != 0) {
    rc = EIO;
    goto error;
   }

   break;
  default:

   rc = EROFS;
   goto error;
  }

  blkoff = 0;
  buf += bsize;
  rest -= bsize;
  blks -= x;
  dblk += x;
 }

 if (rsize != ((void*)0))
  *rsize = size;
error:
 if (bbuf != PTOV(V86_IO_BUFFER))
  bio_free(bbuf, bio_size);
 return (rc);
}
