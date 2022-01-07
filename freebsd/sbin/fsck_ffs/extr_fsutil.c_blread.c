
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
typedef int off_t ;
typedef int intmax_t ;


 int EEXIT ;
 scalar_t__ bkgrdflag ;
 int dev_bsize ;
 int diskreads ;
 int errx (int ,char*) ;
 int memset (char*,int ,size_t) ;
 int pfatal (char*,long) ;
 int pread (int,char*,int,int) ;
 int printf (char*,...) ;
 scalar_t__ resolved ;
 int rwerror (char*,int) ;
 int secsize ;
 int slowio_end () ;
 int slowio_start () ;
 scalar_t__ surrender ;
 int totalreads ;

int
blread(int fd, char *buf, ufs2_daddr_t blk, long size)
{
 char *cp;
 int i, errs;
 off_t offset;

 offset = blk;
 offset *= dev_bsize;
 if (bkgrdflag)
  slowio_start();
 totalreads++;
 diskreads++;
 if (pread(fd, buf, (int)size, offset) == size) {
  if (bkgrdflag)
   slowio_end();
  return (0);
 }






 if (surrender) {
  pfatal("CANNOT READ_BLK: %ld", (long)blk);
  errx(EEXIT, "ABORTING DUE TO READ ERRORS");
 } else
  rwerror("READ BLK", blk);

 errs = 0;
 memset(buf, 0, (size_t)size);
 printf("THE FOLLOWING DISK SECTORS COULD NOT BE READ:");
 for (cp = buf, i = 0; i < size; i += secsize, cp += secsize) {
  if (pread(fd, cp, (int)secsize, offset + i) != secsize) {
   if (secsize != dev_bsize && dev_bsize != 1)
    printf(" %jd (%jd),",
        (intmax_t)(blk * dev_bsize + i) / secsize,
        (intmax_t)blk + i / dev_bsize);
   else
    printf(" %jd,", (intmax_t)blk + i / dev_bsize);
   errs++;
  }
 }
 printf("\n");
 if (errs)
  resolved = 0;
 return (errs);
}
