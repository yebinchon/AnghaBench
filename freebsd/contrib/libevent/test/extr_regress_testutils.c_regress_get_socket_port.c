
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int evutil_socket_t ;
typedef int ev_socklen_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int ntohs (int ) ;

int
regress_get_socket_port(evutil_socket_t fd)
{
 struct sockaddr_storage ss;
 ev_socklen_t socklen = sizeof(ss);
 if (getsockname(fd, (struct sockaddr*)&ss, &socklen) != 0)
  return -1;
 if (ss.ss_family == AF_INET)
  return ntohs( ((struct sockaddr_in*)&ss)->sin_port);
 else if (ss.ss_family == AF_INET6)
  return ntohs( ((struct sockaddr_in6*)&ss)->sin6_port);
 else
  return -1;
}
