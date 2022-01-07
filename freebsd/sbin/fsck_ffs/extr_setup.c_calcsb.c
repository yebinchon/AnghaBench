
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fsrecovery {scalar_t__ fsr_magic; int fsr_ncg; int fsr_sblkno; int fsr_fsbtodb; int fsr_fpg; } ;
struct fs {scalar_t__ fs_magic; int fs_ncg; int fs_sblkno; int fs_fsbtodb; int fs_fpg; } ;


 int DIOCGSECTORSIZE ;
 int EEXIT ;
 scalar_t__ FS_UFS2_MAGIC ;
 char* Malloc (int) ;
 int SBLOCK_UFS2 ;
 scalar_t__ blread (int,char*,int,int) ;
 int dev_bsize ;
 int errx (int ,char*) ;
 int free (char*) ;
 int ioctl (int,int ,int*) ;
 int memset (struct fs*,int ,int) ;

__attribute__((used)) static int
calcsb(char *dev, int devfd, struct fs *fs)
{
 struct fsrecovery *fsr;
 char *fsrbuf;
 u_int secsize;
 if (ioctl(devfd, DIOCGSECTORSIZE, &secsize) == -1)
  return (0);
 fsrbuf = Malloc(secsize);
 if (fsrbuf == ((void*)0))
  errx(EEXIT, "calcsb: cannot allocate recovery buffer");
 if (blread(devfd, fsrbuf,
     (SBLOCK_UFS2 - secsize) / dev_bsize, secsize) != 0)
  return (0);
 fsr = (struct fsrecovery *)&fsrbuf[secsize - sizeof *fsr];
 if (fsr->fsr_magic != FS_UFS2_MAGIC)
  return (0);
 memset(fs, 0, sizeof(struct fs));
 fs->fs_fpg = fsr->fsr_fpg;
 fs->fs_fsbtodb = fsr->fsr_fsbtodb;
 fs->fs_sblkno = fsr->fsr_sblkno;
 fs->fs_magic = fsr->fsr_magic;
 fs->fs_ncg = fsr->fsr_ncg;
 free(fsrbuf);
 return (1);
}
