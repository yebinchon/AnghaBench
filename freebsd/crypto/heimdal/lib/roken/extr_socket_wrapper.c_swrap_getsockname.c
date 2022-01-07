
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int myname_len; int myname; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 struct socket_info* find_socket_info (int) ;
 int memcpy (struct sockaddr*,int ,int ) ;
 int real_getsockname (int,struct sockaddr*,int *) ;

int swrap_getsockname(int s, struct sockaddr *name, socklen_t *addrlen)
{
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_getsockname(s, name, addrlen);
 }

 memcpy(name, si->myname, si->myname_len);
 *addrlen = si->myname_len;

 return 0;
}
