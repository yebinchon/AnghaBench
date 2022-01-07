
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct fsrecovery {scalar_t__ fsr_magic; int fsr_ncg; int fsr_sblkno; int fsr_fsbtodb; int fsr_fpg; } ;
struct TYPE_2__ {scalar_t__ fs_magic; int fs_ncg; int fs_sblkno; int fs_fsbtodb; int fs_fpg; } ;


 int DIOCGSECTORSIZE ;
 scalar_t__ FS_UFS2_MAGIC ;
 char* Malloc (int) ;
 int SBLOCK_UFS2 ;
 scalar_t__ blread (int,char*,int,int) ;
 int blwrite (int,char*,int,int) ;
 int dev_bsize ;
 int free (char*) ;
 int ioctl (int,int ,int*) ;
 int printf (char*) ;
 TYPE_1__ sblock ;

__attribute__((used)) static void
saverecovery(int readfd, int writefd)
{
 struct fsrecovery *fsr;
 char *fsrbuf;
 u_int secsize;

 if (sblock.fs_magic != FS_UFS2_MAGIC ||
     ioctl(readfd, DIOCGSECTORSIZE, &secsize) == -1 ||
     (fsrbuf = Malloc(secsize)) == ((void*)0) ||
     blread(readfd, fsrbuf, (SBLOCK_UFS2 - secsize) / dev_bsize,
       secsize) != 0) {
  printf("RECOVERY DATA COULD NOT BE CREATED\n");
  return;
 }
 fsr = (struct fsrecovery *)&fsrbuf[secsize - sizeof *fsr];
 fsr->fsr_magic = sblock.fs_magic;
 fsr->fsr_fpg = sblock.fs_fpg;
 fsr->fsr_fsbtodb = sblock.fs_fsbtodb;
 fsr->fsr_sblkno = sblock.fs_sblkno;
 fsr->fsr_ncg = sblock.fs_ncg;
 blwrite(writefd, fsrbuf, (SBLOCK_UFS2 - secsize) / secsize, secsize);
 free(fsrbuf);
}
