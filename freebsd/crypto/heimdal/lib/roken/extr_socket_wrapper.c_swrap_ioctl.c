
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int dummy; } ;


 int EAGAIN ;
 int ENOBUFS ;

 int SWRAP_PENDING_RST ;
 int errno ;
 struct socket_info* find_socket_info (int) ;
 int real_ioctl (int,int,void*) ;
 int swrap_dump_packet (struct socket_info*,int *,int ,int *,int ) ;

int swrap_ioctl(int s, int r, void *p)
{
 int ret;
 struct socket_info *si = find_socket_info(s);
 int value;

 if (!si) {
  return real_ioctl(s, r, p);
 }

 ret = real_ioctl(s, r, p);

 switch (r) {
 case 128:
  value = *((int *)p);
  if (ret == -1 && errno != EAGAIN && errno != ENOBUFS) {
   swrap_dump_packet(si, ((void*)0), SWRAP_PENDING_RST, ((void*)0), 0);
  } else if (value == 0) {
   swrap_dump_packet(si, ((void*)0), SWRAP_PENDING_RST, ((void*)0), 0);
  }
  break;
 }

 return ret;
}
