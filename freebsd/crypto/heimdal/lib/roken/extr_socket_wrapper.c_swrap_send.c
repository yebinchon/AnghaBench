
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int dummy; } ;
typedef int ssize_t ;


 int SWRAP_SEND ;
 int SWRAP_SEND_RST ;
 struct socket_info* find_socket_info (int) ;
 int real_send (int,void const*,size_t,int) ;
 int swrap_dump_packet (struct socket_info*,int *,int ,void const*,int) ;

ssize_t swrap_send(int s, const void *buf, size_t len, int flags)
{
 int ret;
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_send(s, buf, len, flags);
 }

 ret = real_send(s, buf, len, flags);

 if (ret == -1) {
  swrap_dump_packet(si, ((void*)0), SWRAP_SEND, buf, len);
  swrap_dump_packet(si, ((void*)0), SWRAP_SEND_RST, ((void*)0), 0);
 } else {
  swrap_dump_packet(si, ((void*)0), SWRAP_SEND, buf, ret);
 }

 return ret;
}
