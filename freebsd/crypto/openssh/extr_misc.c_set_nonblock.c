
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int debug (char*,int,char*) ;
 int debug2 (char*,int) ;
 int debug3 (char*,int) ;
 int errno ;
 int error (char*,int,char*) ;
 int fcntl (int,int ,...) ;
 char* strerror (int ) ;

int
set_nonblock(int fd)
{
 int val;

 val = fcntl(fd, F_GETFL);
 if (val < 0) {
  error("fcntl(%d, F_GETFL): %s", fd, strerror(errno));
  return (-1);
 }
 if (val & O_NONBLOCK) {
  debug3("fd %d is O_NONBLOCK", fd);
  return (0);
 }
 debug2("fd %d setting O_NONBLOCK", fd);
 val |= O_NONBLOCK;
 if (fcntl(fd, F_SETFL, val) == -1) {
  debug("fcntl(%d, F_SETFL, O_NONBLOCK): %s", fd,
      strerror(errno));
  return (-1);
 }
 return (0);
}
