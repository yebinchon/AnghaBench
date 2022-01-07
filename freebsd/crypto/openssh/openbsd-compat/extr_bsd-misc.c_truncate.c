
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int ftruncate (int,int ) ;
 int open (char const*,int ) ;

int truncate(const char *path, off_t length)
{
 int fd, ret, saverrno;

 fd = open(path, O_WRONLY);
 if (fd < 0)
  return (-1);

 ret = ftruncate(fd, length);
 saverrno = errno;
 close(fd);
 if (ret == -1)
  errno = saverrno;

 return(ret);
}
