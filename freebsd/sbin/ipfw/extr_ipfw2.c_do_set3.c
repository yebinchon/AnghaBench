
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int opcode; } ;
typedef TYPE_1__ ip_fw3_opheader ;
struct TYPE_6__ {scalar_t__ test_only; } ;


 int AF_INET ;
 int EX_UNAVAILABLE ;
 int IPPROTO_IP ;
 int IPPROTO_RAW ;
 int IP_FW3 ;
 int SOCK_RAW ;
 TYPE_4__ co ;
 int err (int ,char*) ;
 int ipfw_socket ;
 int setsockopt (int,int ,int ,TYPE_1__*,size_t) ;
 int socket (int ,int ,int ) ;

int
do_set3(int optname, ip_fw3_opheader *op3, size_t optlen)
{

 if (co.test_only)
  return (0);

 if (ipfw_socket == -1)
  ipfw_socket = socket(AF_INET, SOCK_RAW, IPPROTO_RAW);
 if (ipfw_socket < 0)
  err(EX_UNAVAILABLE, "socket");

 op3->opcode = optname;

 return (setsockopt(ipfw_socket, IPPROTO_IP, IP_FW3, op3, optlen));
}
