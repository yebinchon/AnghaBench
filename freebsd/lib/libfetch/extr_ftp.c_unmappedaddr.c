
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int * s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_port; TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_port; int sin_len; int sin_family; TYPE_1__ sin_addr; } ;


 int AF_INET ;
 scalar_t__ AF_INET6 ;
 int IN6_IS_ADDR_V4MAPPED (TYPE_2__*) ;
 int memset (struct sockaddr_in*,int ,int) ;

__attribute__((used)) static void
unmappedaddr(struct sockaddr_in6 *sin6)
{
 struct sockaddr_in *sin4;
 u_int32_t addr;
 int port;

 if (sin6->sin6_family != AF_INET6 ||
     !IN6_IS_ADDR_V4MAPPED(&sin6->sin6_addr))
  return;
 sin4 = (struct sockaddr_in *)sin6;
 addr = *(u_int32_t *)(uintptr_t)&sin6->sin6_addr.s6_addr[12];
 port = sin6->sin6_port;
 memset(sin4, 0, sizeof(struct sockaddr_in));
 sin4->sin_addr.s_addr = addr;
 sin4->sin_port = port;
 sin4->sin_family = AF_INET;
 sin4->sin_len = sizeof(struct sockaddr_in);
}
