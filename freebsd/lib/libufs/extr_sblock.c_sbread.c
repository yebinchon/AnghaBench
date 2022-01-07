
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {scalar_t__ fs_magic; int fs_fsize; int fs_sblockloc; int fs_csp; int fs_sbsize; } ;
struct uufsd {int d_ufs; int d_bsize; int d_sblock; int d_sbcsum; struct fs d_fs; int d_fd; } ;






 int ERROR (struct uufsd*,char*) ;
 scalar_t__ FS_UFS1_MAGIC ;
 scalar_t__ FS_UFS2_MAGIC ;
 int STDSB ;
 int errno ;
 int free (struct fs*) ;
 int fsbtodb (struct fs*,int) ;
 int memcpy (struct fs*,struct fs*,int ) ;
 int sbget (int ,struct fs**,int ) ;

int
sbread(struct uufsd *disk)
{
 struct fs *fs;

 ERROR(disk, ((void*)0));

 if ((errno = sbget(disk->d_fd, &fs, STDSB)) != 0) {
  switch (errno) {
  case 130:
   ERROR(disk, "non-existent or truncated superblock");
   break;
  case 129:
   ERROR(disk, "no usable known superblock found");
   break;
  case 128:
   ERROR(disk, "failed to allocate space for superblock "
       "information");
   break;
  case 131:
   ERROR(disk, "The previous newfs operation on this "
       "volume did not complete.\nYou must complete "
       "newfs before using this volume.");
   break;
  default:
   ERROR(disk, "unknown superblock read error");
   errno = 130;
   break;
  }
  disk->d_ufs = 0;
  return (-1);
 }
 memcpy(&disk->d_fs, fs, fs->fs_sbsize);
 free(fs);
 fs = &disk->d_fs;
 if (fs->fs_magic == FS_UFS1_MAGIC)
  disk->d_ufs = 1;
 if (fs->fs_magic == FS_UFS2_MAGIC)
  disk->d_ufs = 2;
 disk->d_bsize = fs->fs_fsize / fsbtodb(fs, 1);
 disk->d_sblock = fs->fs_sblockloc / disk->d_bsize;
 disk->d_sbcsum = fs->fs_csp;
 return (0);
}
