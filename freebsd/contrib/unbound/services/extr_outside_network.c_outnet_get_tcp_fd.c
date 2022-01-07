
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcp_mss ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
typedef int on ;


 int IPPROTO_TCP ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TCP_MAXSEG ;
 int VERB_ALGO ;
 int WSAGetLastError () ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 int errno ;
 int log_err_addr (char*,int ,struct sockaddr_storage*,int ) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int ) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int verbose (int ,char*) ;
 int wsa_strerror (int ) ;

int
outnet_get_tcp_fd(struct sockaddr_storage* addr, socklen_t addrlen, int tcp_mss)
{
 int s;
  s = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
 if(s == -1) {

  log_err_addr("outgoing tcp: socket", strerror(errno),
   addr, addrlen);




  return -1;
 }
 if(tcp_mss > 0) {







  verbose(VERB_ALGO, "outgoing tcp:"
   " setsockopt(TCP_MAXSEG) unsupported");

 }

 return s;
}
