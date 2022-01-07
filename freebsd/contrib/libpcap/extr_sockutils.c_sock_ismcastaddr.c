
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ IN6_IS_ADDR_MULTICAST (int *) ;
 scalar_t__ IN_MULTICAST (int ) ;
 scalar_t__ PF_INET ;
 int ntohl (int ) ;

__attribute__((used)) static int sock_ismcastaddr(const struct sockaddr *saddr)
{
 if (saddr->sa_family == PF_INET)
 {
  struct sockaddr_in *saddr4 = (struct sockaddr_in *) saddr;
  if (IN_MULTICAST(ntohl(saddr4->sin_addr.s_addr))) return 0;
  else return -1;
 }
 else
 {
  struct sockaddr_in6 *saddr6 = (struct sockaddr_in6 *) saddr;
  if (IN6_IS_ADDR_MULTICAST(&saddr6->sin6_addr)) return 0;
  else return -1;
 }
}
