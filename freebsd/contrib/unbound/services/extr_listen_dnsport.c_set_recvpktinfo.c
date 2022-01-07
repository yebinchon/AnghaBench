
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int on ;


 int AF_INET ;
 int AF_INET6 ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_PKTINFO ;
 int IPV6_RECVPKTINFO ;
 int IP_PKTINFO ;
 int IP_RECVDSTADDR ;
 int errno ;
 int log_err (char*,...) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int
set_recvpktinfo(int s, int family)
{



 (void)s;

 if(family == AF_INET6) {
  log_err("no IPV6_RECVPKTINFO and no IPV6_PKTINFO option, please "
   "disable interface-automatic or do-ip6 in config");
  return 0;


 } else if(family == AF_INET) {
  log_err("no IP_SENDSRCADDR or IP_PKTINFO option, please disable "
   "interface-automatic or do-ip4 in config");
  return 0;


 }
 return 1;
}
