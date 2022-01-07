
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int close (int) ;
 int closesocket (int) ;
 int connect (int,struct sockaddr*,int ) ;
 scalar_t__ errno ;
 int log_err_addr (char*,int ,struct sockaddr_storage*,int ) ;
 int strerror (scalar_t__) ;
 scalar_t__ tcp_connect_errno_needs_log (struct sockaddr*,int ) ;

int
outnet_tcp_connect(int s, struct sockaddr_storage* addr, socklen_t addrlen)
{
 if(connect(s, (struct sockaddr*)addr, addrlen) == -1) {




   if(tcp_connect_errno_needs_log(
    (struct sockaddr*)addr, addrlen))
    log_err_addr("outgoing tcp: connect",
     strerror(errno), addr, addrlen);
   close(s);
   return 0;
 }
 return 1;
}
