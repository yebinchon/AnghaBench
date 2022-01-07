
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int socklen_t ;
struct TYPE_2__ {scalar_t__ test_only; } ;


 int AF_INET ;
 int EX_UNAVAILABLE ;
 int IPPROTO_IP ;
 int IPPROTO_RAW ;
 int IP_DUMMYNET_GET ;
 int IP_FW3 ;
 int IP_FW_ADD ;
 int IP_FW_GET ;
 int IP_FW_NAT_GET_CONFIG ;
 int IP_FW_NAT_GET_LOG ;
 int SOCK_RAW ;
 TYPE_1__ co ;
 int err (int ,char*) ;
 int getsockopt (int,int ,int,void*,int *) ;
 int ipfw_socket ;
 int setsockopt (int,int ,int,void*,uintptr_t) ;
 int socket (int ,int ,int ) ;

int
do_cmd(int optname, void *optval, uintptr_t optlen)
{
 int i;

 if (co.test_only)
  return 0;

 if (ipfw_socket == -1)
  ipfw_socket = socket(AF_INET, SOCK_RAW, IPPROTO_RAW);
 if (ipfw_socket < 0)
  err(EX_UNAVAILABLE, "socket");

 if (optname == IP_FW_GET || optname == IP_DUMMYNET_GET ||
     optname == IP_FW_ADD || optname == IP_FW3 ||
     optname == IP_FW_NAT_GET_CONFIG ||
     optname < 0 ||
     optname == IP_FW_NAT_GET_LOG) {
  if (optname < 0)
   optname = -optname;
  i = getsockopt(ipfw_socket, IPPROTO_IP, optname, optval,
   (socklen_t *)optlen);
 } else {
  i = setsockopt(ipfw_socket, IPPROTO_IP, optname, optval, optlen);
 }
 return i;
}
