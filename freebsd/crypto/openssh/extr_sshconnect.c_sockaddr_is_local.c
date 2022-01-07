
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int IN6_IS_ADDR_LOOPBACK (int *) ;
 int IN_LOOPBACKNET ;
 int ntohl (int ) ;

__attribute__((used)) static int
sockaddr_is_local(struct sockaddr *hostaddr)
{
 switch (hostaddr->sa_family) {
 case 129:
  return (ntohl(((struct sockaddr_in *)hostaddr)->
      sin_addr.s_addr) >> 24) == IN_LOOPBACKNET;
 case 128:
  return IN6_IS_ADDR_LOOPBACK(
      &(((struct sockaddr_in6 *)hostaddr)->sin6_addr));
 default:
  return 0;
 }
}
