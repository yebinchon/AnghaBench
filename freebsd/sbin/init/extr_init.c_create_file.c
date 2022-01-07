
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int close (int) ;
 int emergency (char*,char const*,...) ;
 int errno ;
 int open (char const*,int,int) ;
 int strerror (int ) ;
 scalar_t__ write (int,void const*,size_t) ;

__attribute__((used)) static int
create_file(const char *path, const void *buf, size_t bufsize)
{
 ssize_t nbytes;
 int error, fd;

 fd = open(path, O_WRONLY | O_CREAT | O_EXCL, 0700);
 if (fd < 0) {
  emergency("%s: %s", path, strerror(errno));
  return (-1);
 }

 nbytes = write(fd, buf, bufsize);
 if (nbytes != (ssize_t)bufsize) {
  emergency("write: %s", strerror(errno));
  close(fd);
  return (-1);
 }

 error = close(fd);
 if (error != 0) {
  emergency("close: %s", strerror(errno));
  return (-1);
 }

 return (0);
}
