
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ ENOBUFS ;
 int SWRAP_RECV ;
 int SWRAP_RECV_RST ;
 scalar_t__ errno ;
 struct socket_info* find_socket_info (int) ;
 int real_recv (int,void*,size_t,int) ;
 int swrap_dump_packet (struct socket_info*,int *,int ,void*,int) ;

ssize_t swrap_recv(int s, void *buf, size_t len, int flags)
{
 int ret;
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_recv(s, buf, len, flags);
 }

 ret = real_recv(s, buf, len, flags);
 if (ret == -1 && errno != EAGAIN && errno != ENOBUFS) {
  swrap_dump_packet(si, ((void*)0), SWRAP_RECV_RST, ((void*)0), 0);
 } else if (ret == 0) {
  swrap_dump_packet(si, ((void*)0), SWRAP_RECV_RST, ((void*)0), 0);
 } else {
  swrap_dump_packet(si, ((void*)0), SWRAP_RECV, buf, ret);
 }

 return ret;
}
