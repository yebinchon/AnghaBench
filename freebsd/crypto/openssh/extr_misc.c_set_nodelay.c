
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int IPPROTO_TCP ;
 int TCP_NODELAY ;
 int debug (char*,int ) ;
 int debug2 (char*,int) ;
 int errno ;
 int error (char*,int ) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int strerror (int ) ;

void
set_nodelay(int fd)
{
 int opt;
 socklen_t optlen;

 optlen = sizeof opt;
 if (getsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &opt, &optlen) == -1) {
  debug("getsockopt TCP_NODELAY: %.100s", strerror(errno));
  return;
 }
 if (opt == 1) {
  debug2("fd %d is TCP_NODELAY", fd);
  return;
 }
 opt = 1;
 debug2("fd %d setting TCP_NODELAY", fd);
 if (setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &opt, sizeof opt) == -1)
  error("setsockopt TCP_NODELAY: %.100s", strerror(errno));
}
