
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int RUMP_ETFS_BLK ;
 int close (int) ;
 scalar_t__ ftruncate (int,size_t) ;
 int open (char const*,int,int) ;
 scalar_t__ rump_pub_etfs_register_withsize (char const*,char const*,int ,int ,size_t) ;
 int unlink (char const*) ;

__attribute__((used)) static int
open_disk(const char *devpath, const char *imgpath, size_t size)
{
 int fd;

 fd = open(imgpath, O_CREAT | O_RDWR | O_TRUNC, 0600);
 if (fd < 0)
  return -1;

 if (ftruncate(fd, size) < 0)
  goto fail;

 if (rump_pub_etfs_register_withsize(devpath,
     imgpath, RUMP_ETFS_BLK, 0, size) < 0) {
  goto fail;
 }

 unlink(imgpath);
 return fd;
fail:
 close(fd);
 unlink(imgpath);
 return -1;
}
