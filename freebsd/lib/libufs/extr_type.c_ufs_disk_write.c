
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uufsd {int d_mine; int d_fd; int d_name; } ;


 int ERROR (struct uufsd*,char*) ;
 int MINE_WRITE ;
 int O_RDWR ;
 int close (int) ;
 int open (int ,int ) ;

int
ufs_disk_write(struct uufsd *disk)
{
 int fd;

 ERROR(disk, ((void*)0));

 if (disk->d_mine & MINE_WRITE)
  return (0);

 fd = open(disk->d_name, O_RDWR);
 if (fd < 0) {
  ERROR(disk, "failed to open disk for writing");
  return (-1);
 }

 close(disk->d_fd);
 disk->d_fd = fd;
 disk->d_mine |= MINE_WRITE;

 return (0);
}
