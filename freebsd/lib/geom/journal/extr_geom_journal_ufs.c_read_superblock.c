
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int dummy; } ;
struct uufsd {struct fs d_fs; } ;


 int ufs_disk_close (struct uufsd*) ;
 int ufs_disk_fillout (struct uufsd*,char const*) ;

__attribute__((used)) static struct fs *
read_superblock(const char *prov)
{
 static struct uufsd disk;
 struct fs *fs;

 if (ufs_disk_fillout(&disk, prov) == -1)
  return (((void*)0));
 fs = &disk.d_fs;
 ufs_disk_close(&disk);
 return (fs);
}
