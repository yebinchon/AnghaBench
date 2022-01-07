
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int udp_send_errno_needs_log (struct sockaddr*,int ) ;

int tcp_connect_errno_needs_log(struct sockaddr* addr, socklen_t addrlen)
{
 return udp_send_errno_needs_log(addr, addrlen);
}
