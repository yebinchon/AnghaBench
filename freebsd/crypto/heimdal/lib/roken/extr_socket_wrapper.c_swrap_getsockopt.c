
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int dummy; } ;
typedef int socklen_t ;


 int ENOPROTOOPT ;
 int SOL_SOCKET ;
 int errno ;
 struct socket_info* find_socket_info (int) ;
 int real_getsockopt (int,int,int,void*,int *) ;

int swrap_getsockopt(int s, int level, int optname, void *optval, socklen_t *optlen)
{
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_getsockopt(s, level, optname, optval, optlen);
 }

 if (level == SOL_SOCKET) {
  return real_getsockopt(s, level, optname, optval, optlen);
 }

 errno = ENOPROTOOPT;
 return -1;
}
