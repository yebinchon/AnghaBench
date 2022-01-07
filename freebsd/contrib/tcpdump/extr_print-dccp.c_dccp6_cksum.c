
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct ip6_hdr {int dummy; } ;
struct dccp_hdr {int dummy; } ;
typedef int netdissect_options ;


 int IPPROTO_DCCP ;
 int dccp_csum_coverage (struct dccp_hdr const*,int ) ;
 int nextproto6_cksum (int *,struct ip6_hdr const*,int const*,int ,int ,int ) ;

__attribute__((used)) static int dccp6_cksum(netdissect_options *ndo, const struct ip6_hdr *ip6,
 const struct dccp_hdr *dh, u_int len)
{
 return nextproto6_cksum(ndo, ip6, (const uint8_t *)(const void *)dh, len,
    dccp_csum_coverage(dh, len), IPPROTO_DCCP);
}
