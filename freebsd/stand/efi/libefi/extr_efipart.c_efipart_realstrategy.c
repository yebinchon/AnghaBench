
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_9__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {size_t d_offset; TYPE_2__ dd; } ;
struct devdesc {int dummy; } ;
struct TYPE_11__ {TYPE_5__* pd_blkio; } ;
typedef TYPE_4__ pdinfo_t ;
typedef int daddr_t ;
struct TYPE_12__ {TYPE_3__* Media; } ;
struct TYPE_10__ {size_t BlockSize; size_t LastBlock; unsigned int IoAlign; } ;
struct TYPE_8__ {scalar_t__ dv_type; } ;
typedef TYPE_5__ EFI_BLOCK_IO ;


 size_t BIO_BUFFER_SIZE ;
 scalar_t__ DEVT_DISK ;
 int DIOCGMEDIASIZE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int EROFS ;
 int F_MASK ;


 int bcopy (char*,char*,size_t) ;
 scalar_t__ disk_ioctl (struct disk_devdesc*,int ,size_t*) ;
 TYPE_4__* efiblk_get_pdinfo (struct devdesc*) ;
 int efipart_readwrite (TYPE_5__*,int const,int,size_t,char*) ;
 int free (char*) ;
 char* memalign (unsigned int,size_t) ;
 size_t min (size_t,size_t) ;
 uintptr_t roundup2 (uintptr_t,unsigned int) ;

__attribute__((used)) static int
efipart_realstrategy(void *devdata, int rw, daddr_t blk, size_t size,
    char *buf, size_t *rsize)
{
 struct disk_devdesc *dev = (struct disk_devdesc *)devdata;
 pdinfo_t *pd;
 EFI_BLOCK_IO *blkio;
 uint64_t off, disk_blocks, d_offset = 0;
 char *blkbuf;
 size_t blkoff, blksz, bio_size;
 unsigned ioalign;
 bool need_buf;
 int rc;
 uint64_t diskend, readstart;

 if (dev == ((void*)0) || blk < 0)
  return (EINVAL);

 pd = efiblk_get_pdinfo((struct devdesc *)dev);
 if (pd == ((void*)0))
  return (EINVAL);

 blkio = pd->pd_blkio;
 if (blkio == ((void*)0))
  return (ENXIO);

 if (size == 0 || (size % 512) != 0)
  return (EIO);

 off = blk * 512;




 disk_blocks = 0;
 if (dev->dd.d_dev->dv_type == DEVT_DISK) {
  if (disk_ioctl(dev, DIOCGMEDIASIZE, &disk_blocks) == 0) {

   disk_blocks /= blkio->Media->BlockSize;
  }
  d_offset = dev->d_offset;
 }
 if (disk_blocks == 0)
  disk_blocks = blkio->Media->LastBlock + 1 - d_offset;


 if ((off + size) / blkio->Media->BlockSize > d_offset + disk_blocks) {
  diskend = d_offset + disk_blocks;
  readstart = off / blkio->Media->BlockSize;

  if (diskend <= readstart) {
   if (rsize != ((void*)0))
    *rsize = 0;

   return (EIO);
  }
  size = diskend - readstart;
  size = size * blkio->Media->BlockSize;
 }

 need_buf = 1;

 if ((size % blkio->Media->BlockSize == 0) &&
     (off % blkio->Media->BlockSize == 0))
  need_buf = 0;


 ioalign = blkio->Media->IoAlign;
 if (ioalign == 0)
  ioalign++;

 if (ioalign > 1 && (uintptr_t)buf != roundup2((uintptr_t)buf, ioalign))
  need_buf = 1;

 if (need_buf) {
  for (bio_size = BIO_BUFFER_SIZE; bio_size > 0;
      bio_size -= blkio->Media->BlockSize) {
   blkbuf = memalign(ioalign, bio_size);
   if (blkbuf != ((void*)0))
    break;
  }
 } else {
  blkbuf = buf;
  bio_size = size;
 }

 if (blkbuf == ((void*)0))
  return (ENOMEM);

 if (rsize != ((void*)0))
  *rsize = size;

 rc = 0;
 blk = off / blkio->Media->BlockSize;
 blkoff = off % blkio->Media->BlockSize;

 while (size > 0) {
  size_t x = min(size, bio_size);

  if (x < blkio->Media->BlockSize)
   x = 1;
  else
   x /= blkio->Media->BlockSize;

  switch (rw & F_MASK) {
  case 129:
   blksz = blkio->Media->BlockSize * x - blkoff;
   if (size < blksz)
    blksz = size;

   rc = efipart_readwrite(blkio, rw, blk, x, blkbuf);
   if (rc != 0)
    goto error;

   if (need_buf)
    bcopy(blkbuf + blkoff, buf, blksz);
   break;
  case 128:
   rc = 0;
   if (blkoff != 0) {




    x = 1;
    blksz = blkio->Media->BlockSize - blkoff;
    blksz = min(blksz, size);
    rc = efipart_readwrite(blkio, 129, blk, x,
        blkbuf);
   } else if (size < blkio->Media->BlockSize) {




    x = 1;
    blksz = size;
    rc = efipart_readwrite(blkio, 129, blk, x,
        blkbuf);
   } else {

    blksz = blkio->Media->BlockSize * x;
   }

   if (rc != 0)
    goto error;




   if (need_buf)
    bcopy(buf, blkbuf + blkoff, blksz);
   rc = efipart_readwrite(blkio, 128, blk, x, blkbuf);
   if (rc != 0)
    goto error;
   break;
  default:

   rc = EROFS;
   goto error;
  }

  blkoff = 0;
  buf += blksz;
  size -= blksz;
  blk += x;
 }

error:
 if (rsize != ((void*)0))
  *rsize -= size;

 if (need_buf)
  free(blkbuf);
 return (rc);
}
