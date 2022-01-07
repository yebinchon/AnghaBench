
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ evutil_socket_t ;


 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ SOCKET_ERROR ;
 int event_sock_warn (scalar_t__,char*,int) ;
 int event_warn (char*,scalar_t__) ;
 int fcntl (scalar_t__,int ,int) ;
 scalar_t__ ioctlsocket (scalar_t__,int ,int*) ;

int
evutil_make_socket_nonblocking(evutil_socket_t fd)
{
 {
  int flags;
  if ((flags = fcntl(fd, F_GETFL, ((void*)0))) < 0) {
   event_warn("fcntl(%d, F_GETFL)", fd);
   return -1;
  }
  if (!(flags & O_NONBLOCK)) {
   if (fcntl(fd, F_SETFL, flags | O_NONBLOCK) == -1) {
    event_warn("fcntl(%d, F_SETFL)", fd);
    return -1;
   }
  }
 }

 return 0;
}
