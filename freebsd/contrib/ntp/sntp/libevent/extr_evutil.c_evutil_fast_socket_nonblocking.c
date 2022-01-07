
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int event_warn (char*,int ) ;
 int evutil_make_socket_nonblocking (int ) ;
 int fcntl (int ,int ,int ) ;

__attribute__((used)) static int
evutil_fast_socket_nonblocking(evutil_socket_t fd)
{



 if (fcntl(fd, F_SETFL, O_NONBLOCK) == -1) {
  event_warn("fcntl(%d, F_SETFL)", fd);
  return -1;
 }
 return 0;

}
