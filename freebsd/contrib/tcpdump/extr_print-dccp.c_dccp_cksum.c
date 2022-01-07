
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct ip {int dummy; } ;
struct dccp_hdr {int dummy; } ;
typedef int netdissect_options ;


 int IPPROTO_DCCP ;
 int dccp_csum_coverage (struct dccp_hdr const*,int ) ;
 int nextproto4_cksum (int *,struct ip const*,int const*,int ,int ,int ) ;

__attribute__((used)) static int dccp_cksum(netdissect_options *ndo, const struct ip *ip,
 const struct dccp_hdr *dh, u_int len)
{
 return nextproto4_cksum(ndo, ip, (const uint8_t *)(const void *)dh, len,
    dccp_csum_coverage(dh, len), IPPROTO_DCCP);
}
