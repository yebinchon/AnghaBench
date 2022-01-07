
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int one ;


 int AF_INET ;
 int ERR (char*) ;
 int INADDR_LOOPBACK ;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;
 int IP_PKTINFO ;
 int IP_RECVPKTINFO ;
 int SOCK_DGRAM ;
 int bind (int,struct sockaddr const*,int) ;
 int getsockname (int,struct sockaddr*,int*) ;
 int htonl (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
server(struct sockaddr_in *sin) {
 int s, one;
 socklen_t len = sizeof(*sin);

 if ((s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
  ERR("socket");

 memset(sin, 0, len);
 sin->sin_family = AF_INET;
 sin->sin_len = len;
 sin->sin_port = 0;
 sin->sin_addr.s_addr = htonl(INADDR_LOOPBACK);

 if (bind(s, (const struct sockaddr *)sin, len) == -1)
  ERR("bind");

 if (getsockname(s, (struct sockaddr *)sin, &len) == -1)
  ERR("getsockname");

 one = 1;
 if (setsockopt(s, IPPROTO_IP, IP_PKTINFO, &one, sizeof(one)) == -1)
  ERR("setsockopt");
 if (setsockopt(s, IPPROTO_IP, IP_RECVPKTINFO, &one, sizeof(one)) == -1)
  ERR("setsockopt");

 return s;
}
