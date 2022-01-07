
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int fs_ncg; } ;
struct uufsd {int d_fd; struct fs d_fs; } ;



 int ERROR (struct uufsd*,char*) ;
 int errno ;
 int sbput (int ,struct fs*,int ) ;
 int ufs_disk_write (struct uufsd*) ;

int
sbwrite(struct uufsd *disk, int all)
{
 struct fs *fs;
 int rv;

 ERROR(disk, ((void*)0));

 rv = ufs_disk_write(disk);
 if (rv == -1) {
  ERROR(disk, "failed to open disk for writing");
  return (-1);
 }

 fs = &disk->d_fs;
 if ((errno = sbput(disk->d_fd, fs, all ? fs->fs_ncg : 0)) != 0) {
  switch (errno) {
  case 128:
   ERROR(disk, "failed to write superblock");
   break;
  default:
   ERROR(disk, "unknown superblock write error");
   errno = 128;
   break;
  }
  return (-1);
 }
 return (0);
}
