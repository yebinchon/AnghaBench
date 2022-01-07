
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fsrecovery {scalar_t__ fsr_magic; } ;


 int DIOCGSECTORSIZE ;
 scalar_t__ FS_UFS2_MAGIC ;
 char* Malloc (int) ;
 int SBLOCK_UFS2 ;
 scalar_t__ blread (int,char*,int,int) ;
 int dev_bsize ;
 int free (char*) ;
 int ioctl (int,int ,int*) ;

__attribute__((used)) static int
chkrecovery(int devfd)
{
 struct fsrecovery *fsr;
 char *fsrbuf;
 u_int secsize;





 if (ioctl(devfd, DIOCGSECTORSIZE, &secsize) == -1 ||
     (fsrbuf = Malloc(secsize)) == ((void*)0) ||
     blread(devfd, fsrbuf, (SBLOCK_UFS2 - secsize) / dev_bsize,
       secsize) != 0)
  return (1);




 fsr = (struct fsrecovery *)&fsrbuf[secsize - sizeof *fsr];
 if (fsr->fsr_magic == FS_UFS2_MAGIC) {
  free(fsrbuf);
  return (1);
 }



 free(fsrbuf);
 return (0);
}
