
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_8__ {struct sockaddr sin6_addr; int sin6_flowinfo; int sin6_port; int sin6_family; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
union socket_addr {TYPE_3__ sin6; TYPE_2__ sin; } ;
struct TYPE_9__ {union socket_addr addr; int flowinfo; } ;
struct TYPE_10__ {TYPE_4__ ipv6; int ipv4; } ;
struct ds_header {int version; TYPE_5__ addr; int port; } ;
typedef int socklen_t ;


 int AF_INET ;
 int AF_INET6 ;
 int memcpy (struct sockaddr*,union socket_addr*,int) ;
 int memset (union socket_addr*,int ,int) ;

__attribute__((used)) static void ds_set_src(struct sockaddr *addr, socklen_t *addrlen,
         struct ds_header *hdr)
{
 union socket_addr sa;

 memset(&sa, 0, sizeof sa);
 if (hdr->version == 4) {
  if (*addrlen > sizeof(sa.sin))
   *addrlen = sizeof(sa.sin);

  sa.sin.sin_family = AF_INET;
  sa.sin.sin_port = hdr->port;
  sa.sin.sin_addr.s_addr = hdr->addr.ipv4;
 } else {
  if (*addrlen > sizeof(sa.sin6))
   *addrlen = sizeof(sa.sin6);

  sa.sin6.sin6_family = AF_INET6;
  sa.sin6.sin6_port = hdr->port;
  sa.sin6.sin6_flowinfo = hdr->addr.ipv6.flowinfo;
  memcpy(&sa.sin6.sin6_addr, &hdr->addr.ipv6.addr, 16);
 }
 memcpy(addr, &sa, *addrlen);
}
