
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
typedef int ssize_t ;
typedef int off_t ;
typedef scalar_t__ intmax_t ;


 int dev_bsize ;
 int fsmodified ;
 int printf (char*,...) ;
 int pwrite (int,char*,int,int) ;
 scalar_t__ resolved ;
 int rwerror (char*,int) ;

void
blwrite(int fd, char *buf, ufs2_daddr_t blk, ssize_t size)
{
 int i;
 char *cp;
 off_t offset;

 if (fd < 0)
  return;
 offset = blk;
 offset *= dev_bsize;
 if (pwrite(fd, buf, size, offset) == size) {
  fsmodified = 1;
  return;
 }
 resolved = 0;
 rwerror("WRITE BLK", blk);
 printf("THE FOLLOWING SECTORS COULD NOT BE WRITTEN:");
 for (cp = buf, i = 0; i < size; i += dev_bsize, cp += dev_bsize)
  if (pwrite(fd, cp, dev_bsize, offset + i) != dev_bsize)
   printf(" %jd,", (intmax_t)blk + i / dev_bsize);
 printf("\n");
 return;
}
