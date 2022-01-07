
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {TYPE_2__ sin_addr; } ;
struct TYPE_5__ {scalar_t__ sa_family; } ;
union socket_addr {TYPE_4__ sin6; TYPE_3__ sin; TYPE_1__ sa; } ;


 scalar_t__ AF_INET ;
 int INADDR_ANY ;
 int INADDR_LOOPBACK ;
 scalar_t__ htobe32 (int ) ;
 int in6addr_any ;
 int in6addr_loopback ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int rs_any_addr(const union socket_addr *addr)
{
 if (addr->sa.sa_family == AF_INET) {
  return (addr->sin.sin_addr.s_addr == htobe32(INADDR_ANY) ||
   addr->sin.sin_addr.s_addr == htobe32(INADDR_LOOPBACK));
 } else {
  return (!memcmp(&addr->sin6.sin6_addr, &in6addr_any, 16) ||
   !memcmp(&addr->sin6.sin6_addr, &in6addr_loopback, 16));
 }
}
