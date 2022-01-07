
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ttl ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int rsin ;
typedef int naddr ;


 int AF_INET ;
 int BADERR (int,char*) ;
 int DBGERR (int,char*) ;
 scalar_t__ EADDRINUSE ;
 int IPPROTO_IP ;
 int IP_MULTICAST_TTL ;
 int RIP_PORT ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int fix_sock (int,char*) ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,unsigned char*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
get_rip_sock(naddr addr,
      int serious)
{
 struct sockaddr_in rsin;
 unsigned char ttl;
 int s;


 if ((s = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
  BADERR(1,"rip_sock = socket()");

 memset(&rsin, 0, sizeof(rsin));



 rsin.sin_family = AF_INET;
 rsin.sin_port = htons(RIP_PORT);
 rsin.sin_addr.s_addr = addr;
 if (bind(s, (struct sockaddr *)&rsin, sizeof(rsin)) < 0) {
  if (serious)
   BADERR(errno != EADDRINUSE, "bind(rip_sock)");
  close(s);
  return -1;
 }
 fix_sock(s,"rip_sock");

 ttl = 1;
 if (setsockopt(s, IPPROTO_IP, IP_MULTICAST_TTL,
         &ttl, sizeof(ttl)) < 0)
  DBGERR(1,"rip_sock setsockopt(IP_MULTICAST_TTL)");

 return s;
}
