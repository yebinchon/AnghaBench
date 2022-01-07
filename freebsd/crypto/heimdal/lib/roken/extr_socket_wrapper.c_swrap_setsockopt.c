
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int family; } ;
typedef int socklen_t ;



 int ENOPROTOOPT ;
 int SOL_SOCKET ;
 int errno ;
 struct socket_info* find_socket_info (int) ;
 int real_setsockopt (int,int,int,void const*,int ) ;

int swrap_setsockopt(int s, int level, int optname, const void *optval, socklen_t optlen)
{
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_setsockopt(s, level, optname, optval, optlen);
 }

 if (level == SOL_SOCKET) {
  return real_setsockopt(s, level, optname, optval, optlen);
 }

 switch (si->family) {
 case 128:
  return 0;
 default:
  errno = ENOPROTOOPT;
  return -1;
 }
}
