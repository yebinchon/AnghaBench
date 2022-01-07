
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct addrinfo {TYPE_1__* ai_addr; struct addrinfo* ai_next; void* ai_protocol; int ai_socktype; void* ai_family; } ;
typedef int hints ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAI_NONAME ;
 void* IPPROTO_TCP ;
 void* IPPROTO_UDP ;
 void* PF_UNSPEC ;
 int PROTO_UNDEF ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (int *,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohs (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warning (char*,char const*) ;

int
pcap_nametoport(const char *name, int *port, int *proto)
{
 struct addrinfo hints, *res, *ai;
 int error;
 struct sockaddr_in *in4;



 int tcp_port = -1;
 int udp_port = -1;





 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_protocol = IPPROTO_TCP;
 error = getaddrinfo(((void*)0), name, &hints, &res);
 if (error != 0) {
  if (error != EAI_NONAME) {





   return 0;
  }
 } else {



  for (ai = res; ai != ((void*)0); ai = ai->ai_next) {



   if (ai->ai_addr != ((void*)0)) {



    if (ai->ai_addr->sa_family == AF_INET) {
     in4 = (struct sockaddr_in *)ai->ai_addr;
     tcp_port = ntohs(in4->sin_port);
     break;
    }







   }
  }
  freeaddrinfo(res);
 }

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = IPPROTO_UDP;
 error = getaddrinfo(((void*)0), name, &hints, &res);
 if (error != 0) {
  if (error != EAI_NONAME) {





   return 0;
  }
 } else {



  for (ai = res; ai != ((void*)0); ai = ai->ai_next) {



   if (ai->ai_addr != ((void*)0)) {



    if (ai->ai_addr->sa_family == AF_INET) {
     in4 = (struct sockaddr_in *)ai->ai_addr;
     udp_port = ntohs(in4->sin_port);
     break;
    }







   }
  }
  freeaddrinfo(res);
 }







 if (tcp_port >= 0) {
  *port = tcp_port;
  *proto = IPPROTO_TCP;
  if (udp_port >= 0) {
   if (udp_port == tcp_port)
    *proto = PROTO_UNDEF;







  }
  return 1;
 }
 if (udp_port >= 0) {
  *port = udp_port;
  *proto = IPPROTO_UDP;
  return 1;
 }
 return 0;
}
