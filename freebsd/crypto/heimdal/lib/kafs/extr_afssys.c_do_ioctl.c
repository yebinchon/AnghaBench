
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_RDWR ;
 int afs_ioctlnum ;
 int afs_ioctlpath ;
 int close (int) ;
 int errno ;
 int ioctl (int,int ,void*) ;
 int open (int ,int ) ;

__attribute__((used)) static int
do_ioctl(void *data)
{
    int fd, ret, saved_errno;
    fd = open(afs_ioctlpath, O_RDWR);
    if (fd < 0) {
 errno = EINVAL;
 return -1;
    }
    ret = ioctl(fd, afs_ioctlnum, data);
    saved_errno = errno;
    close(fd);
    errno = saved_errno;
    return ret;
}
