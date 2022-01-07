
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_len; int sin6_port; int sin6_addr; scalar_t__ sin6_family; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; scalar_t__ sin_family; } ;
struct krping_cb {scalar_t__ addr_type; int port; int addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int memcpy (void*,int ,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;

__attribute__((used)) static void fill_sockaddr(struct sockaddr_storage *sin, struct krping_cb *cb)
{
 memset(sin, 0, sizeof(*sin));

 if (cb->addr_type == AF_INET) {
  struct sockaddr_in *sin4 = (struct sockaddr_in *)sin;
  sin4->sin_len = sizeof(*sin4);
  sin4->sin_family = AF_INET;
  memcpy((void *)&sin4->sin_addr.s_addr, cb->addr, 4);
  sin4->sin_port = cb->port;
 } else if (cb->addr_type == AF_INET6) {
  struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sin;
  sin6->sin6_len = sizeof(*sin6);
  sin6->sin6_family = AF_INET6;
  memcpy((void *)&sin6->sin6_addr, cb->addr, 16);
  sin6->sin6_port = cb->port;
 }
}
