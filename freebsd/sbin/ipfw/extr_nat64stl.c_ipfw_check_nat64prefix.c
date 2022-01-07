
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * __u6_addr8; } ;
struct in6_addr {TYPE_1__ __u6_addr; } ;


 int EINVAL ;
 int IN6_IS_ADDR_LOOPBACK (struct in6_addr const*) ;
 int IN6_IS_ADDR_MULTICAST (struct in6_addr const*) ;
 int IN6_IS_ADDR_UNSPECIFIED (struct in6_addr const*) ;
 int IN6_IS_ADDR_WKPFX (struct in6_addr const*) ;

int
ipfw_check_nat64prefix(const struct in6_addr *prefix, int length)
{

 switch (length) {
 case 32:
 case 40:
 case 48:
 case 56:
 case 64:

  if (IN6_IS_ADDR_WKPFX(prefix))
   return (EINVAL);

 case 96:

  if (prefix->__u6_addr.__u6_addr8[8] != 0)
   return (EINVAL);

  if (IN6_IS_ADDR_MULTICAST(prefix) ||
      IN6_IS_ADDR_UNSPECIFIED(prefix) ||
      IN6_IS_ADDR_LOOPBACK(prefix))
   return (EINVAL);
  return (0);
 }
 return (EINVAL);
}
