
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ttl ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_5__ {void* s_addr; } ;
struct TYPE_4__ {void* s_addr; } ;
struct sockaddr_in {TYPE_3__ imr_multiaddr; TYPE_2__ imr_interface; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct ip_mreq {TYPE_3__ imr_multiaddr; TYPE_2__ imr_interface; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int on ;
typedef int mcast_addr ;
typedef int addr ;


 int AF_INET ;
 int F_SETFL ;
 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IP_ADD_MEMBERSHIP ;
 int IP_MULTICAST_TTL ;
 int O_NONBLOCK ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int UPNP_MULTICAST_ADDRESS ;
 int UPNP_MULTICAST_PORT ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ fcntl (int,int ,int ) ;
 void* htonl (int ) ;
 int htons (int ) ;
 int inet_addr (int ) ;
 int os_memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,...) ;
 int socket (int ,int ,int ) ;

int ssdp_listener_open(void)
{
 struct sockaddr_in addr;
 struct ip_mreq mcast_addr;
 int on = 1;

 unsigned char ttl = 4;
 int sd;

 sd = socket(AF_INET, SOCK_DGRAM, 0);
 if (sd < 0 ||
     fcntl(sd, F_SETFL, O_NONBLOCK) != 0 ||
     setsockopt(sd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)))
  goto fail;
 os_memset(&addr, 0, sizeof(addr));
 addr.sin_family = AF_INET;
 addr.sin_addr.s_addr = htonl(INADDR_ANY);
 addr.sin_port = htons(UPNP_MULTICAST_PORT);
 if (bind(sd, (struct sockaddr *) &addr, sizeof(addr)))
  goto fail;
 os_memset(&mcast_addr, 0, sizeof(mcast_addr));
 mcast_addr.imr_interface.s_addr = htonl(INADDR_ANY);
 mcast_addr.imr_multiaddr.s_addr = inet_addr(UPNP_MULTICAST_ADDRESS);
 if (setsockopt(sd, IPPROTO_IP, IP_ADD_MEMBERSHIP,
         (char *) &mcast_addr, sizeof(mcast_addr)) ||
     setsockopt(sd, IPPROTO_IP, IP_MULTICAST_TTL,
         &ttl, sizeof(ttl)))
  goto fail;

 return sd;

fail:
 if (sd >= 0)
  close(sd);
 return -1;
}
