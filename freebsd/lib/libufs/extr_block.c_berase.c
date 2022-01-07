
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
struct uufsd {int dummy; } ;


 int ERROR (struct uufsd*,char*) ;
 int berase_helper (struct uufsd*,int ,int ) ;
 int ufs_disk_write (struct uufsd*) ;

int
berase(struct uufsd *disk, ufs2_daddr_t blockno, ufs2_daddr_t size)
{
 int rv;

 ERROR(disk, ((void*)0));
 rv = ufs_disk_write(disk);
 if (rv == -1) {
  ERROR(disk, "failed to open disk for writing");
  return(rv);
 }
 return (berase_helper(disk, blockno, size));
}
