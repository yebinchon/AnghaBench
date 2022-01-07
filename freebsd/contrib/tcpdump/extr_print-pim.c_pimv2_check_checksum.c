
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct cksum_vec {scalar_t__ len; int const* ptr; } ;
typedef int netdissect_options ;
typedef enum checksum_status { ____Placeholder_checksum_status } checksum_status ;


 int CORRECT ;
 int INCORRECT ;
 int IPPROTO_PIM ;
 int IP_V (struct ip const*) ;
 int ND_TTEST2 (int const,scalar_t__) ;
 int UNVERIFIED ;
 scalar_t__ in_cksum (struct cksum_vec*,int) ;
 scalar_t__ nextproto6_cksum (int *,struct ip6_hdr const*,int const*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static enum checksum_status
pimv2_check_checksum(netdissect_options *ndo, const u_char *bp,
       const u_char *bp2, u_int len)
{
 const struct ip *ip;
 u_int cksum;

 if (!ND_TTEST2(bp[0], len)) {

  return (UNVERIFIED);
 }
 ip = (const struct ip *)bp2;
 if (IP_V(ip) == 4) {
  struct cksum_vec vec[1];

  vec[0].ptr = bp;
  vec[0].len = len;
  cksum = in_cksum(vec, 1);
  return (cksum ? INCORRECT : CORRECT);
 } else if (IP_V(ip) == 6) {
  const struct ip6_hdr *ip6;

  ip6 = (const struct ip6_hdr *)bp2;
  cksum = nextproto6_cksum(ndo, ip6, bp, len, len, IPPROTO_PIM);
  return (cksum ? INCORRECT : CORRECT);
 } else {
  return (UNVERIFIED);
 }
}
