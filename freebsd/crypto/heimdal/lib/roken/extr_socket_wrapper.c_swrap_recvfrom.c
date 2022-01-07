
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int un_addr ;
struct socket_info {int family; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;


 int SWRAP_RECVFROM ;
 struct socket_info* find_socket_info (int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int real_recvfrom (int,void*,size_t,int,struct sockaddr*,int*) ;
 int sockaddr_convert_from_un (struct socket_info*,struct sockaddr_un*,int,int ,struct sockaddr*,int*) ;
 int swrap_dump_packet (struct socket_info*,struct sockaddr*,int ,void*,int) ;

ssize_t swrap_recvfrom(int s, void *buf, size_t len, int flags, struct sockaddr *from, socklen_t *fromlen)
{
 struct sockaddr_un un_addr;
 socklen_t un_addrlen = sizeof(un_addr);
 int ret;
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_recvfrom(s, buf, len, flags, from, fromlen);
 }


 memset(&un_addr, 0, sizeof(un_addr));
 ret = real_recvfrom(s, buf, len, flags, (struct sockaddr *)&un_addr, &un_addrlen);
 if (ret == -1)
  return ret;

 if (sockaddr_convert_from_un(si, &un_addr, un_addrlen,
         si->family, from, fromlen) == -1) {
  return -1;
 }

 swrap_dump_packet(si, from, SWRAP_RECVFROM, buf, ret);

 return ret;
}
