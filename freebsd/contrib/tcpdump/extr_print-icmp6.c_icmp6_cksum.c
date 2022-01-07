
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct ip6_hdr {int dummy; } ;
struct icmp6_hdr {int dummy; } ;
typedef int netdissect_options ;


 int IPPROTO_ICMPV6 ;
 int nextproto6_cksum (int *,struct ip6_hdr const*,int const*,int ,int ,int ) ;

__attribute__((used)) static int icmp6_cksum(netdissect_options *ndo, const struct ip6_hdr *ip6,
 const struct icmp6_hdr *icp, u_int len)
{
 return nextproto6_cksum(ndo, ip6, (const uint8_t *)(const void *)icp, len, len,
    IPPROTO_ICMPV6);
}
