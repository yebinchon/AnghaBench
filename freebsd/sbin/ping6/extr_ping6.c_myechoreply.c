
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icmp6_hdr {int icmp6_id; } ;


 scalar_t__ ident ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
myechoreply(const struct icmp6_hdr *icp)
{
 if (ntohs(icp->icmp6_id) == ident)
  return 1;
 else
  return 0;
}
