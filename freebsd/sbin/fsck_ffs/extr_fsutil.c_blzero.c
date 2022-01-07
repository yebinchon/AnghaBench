
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long ufs2_daddr_t ;
typedef long off_t ;


 int EEXIT ;
 long MIN (int ,long) ;
 int ZEROBUFSIZE ;
 char* calloc (int ,int) ;
 long dev_bsize ;
 int errx (int ,char*) ;
 scalar_t__ lseek (int,long,int ) ;
 int rwerror (char*,long) ;
 long write (int,char*,long) ;

void
blzero(int fd, ufs2_daddr_t blk, long size)
{
 static char *zero;
 off_t offset, len;

 if (fd < 0)
  return;
 if (zero == ((void*)0)) {
  zero = calloc(ZEROBUFSIZE, 1);
  if (zero == ((void*)0))
   errx(EEXIT, "cannot allocate buffer pool");
 }
 offset = blk * dev_bsize;
 if (lseek(fd, offset, 0) < 0)
  rwerror("SEEK BLK", blk);
 while (size > 0) {
  len = MIN(ZEROBUFSIZE, size);
  if (write(fd, zero, len) != len)
   rwerror("WRITE BLK", blk);
  blk += len / dev_bsize;
  size -= len;
 }
}
