
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int dummy; } ;
struct in6_addr {int dummy; } ;


 size_t CMSG_SPACE (int) ;


size_t
inet6_rthdr_space(int type, int seg)
{
 switch (type) {
 case 128:
  if (seg < 1 || seg > 23)
   return (0);




  return (CMSG_SPACE(sizeof(struct in6_addr) * seg +
      sizeof(struct ip6_rthdr0)));

 default:
  return (0);
 }
}
