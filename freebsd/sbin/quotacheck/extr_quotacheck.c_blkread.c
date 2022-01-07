
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs2_daddr_t ;
typedef int off_t ;


 int SEEK_SET ;
 int dev_bsize ;
 int errx (int,char*,long) ;
 int fi ;
 scalar_t__ lseek (int ,int,int ) ;
 long read (int ,char*,long) ;

void
blkread(ufs2_daddr_t bno, char *buf, long cnt)
{

 if (lseek(fi, (off_t)bno * dev_bsize, SEEK_SET) < 0 ||
     read(fi, buf, cnt) != cnt)
  errx(1, "blkread failed on block %ld", (long)bno);
}
