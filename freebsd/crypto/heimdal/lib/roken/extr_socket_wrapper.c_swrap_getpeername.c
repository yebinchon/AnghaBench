
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int peername_len; int peername; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int ENOTCONN ;
 int errno ;
 struct socket_info* find_socket_info (int) ;
 int memcpy (struct sockaddr*,int ,int ) ;
 int real_getpeername (int,struct sockaddr*,int *) ;

int swrap_getpeername(int s, struct sockaddr *name, socklen_t *addrlen)
{
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_getpeername(s, name, addrlen);
 }

 if (!si->peername)
 {
  errno = ENOTCONN;
  return -1;
 }

 memcpy(name, si->peername, si->peername_len);
 *addrlen = si->peername_len;

 return 0;
}
