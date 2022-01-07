
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uufsd {int dummy; } ;


 int ERROR (struct uufsd*,char*) ;
 int sbread (struct uufsd*) ;
 int ufs_disk_close (struct uufsd*) ;
 int ufs_disk_fillout_blank (struct uufsd*,char const*) ;

int
ufs_disk_fillout(struct uufsd *disk, const char *name)
{
 if (ufs_disk_fillout_blank(disk, name) == -1) {
  return (-1);
 }
 if (sbread(disk) == -1) {
  ERROR(disk, "could not read superblock to fill out disk");
  ufs_disk_close(disk);
  return (-1);
 }
 return (0);
}
