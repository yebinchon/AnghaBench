
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef void* u_int ;
typedef void* u_char ;
struct ip {int ip_dst; int ip_src; } ;
struct cksum_vec {int len; int const* ptr; } ;
typedef int ph ;
typedef int netdissect_options ;


 int IP_HL (struct ip const*) ;
 int UNALIGNED_MEMCPY (int *,int *,int) ;
 scalar_t__ htons (scalar_t__) ;
 int in_cksum (struct cksum_vec*,int) ;
 int ip_finddst (int *,struct ip const*) ;

int
nextproto4_cksum(netdissect_options *ndo,
                 const struct ip *ip, const uint8_t *data,
                 u_int len, u_int covlen, u_int next_proto)
{
 struct phdr {
  uint32_t src;
  uint32_t dst;
  u_char mbz;
  u_char proto;
  uint16_t len;
 } ph;
 struct cksum_vec vec[2];


 ph.len = htons((uint16_t)len);
 ph.mbz = 0;
 ph.proto = next_proto;
 UNALIGNED_MEMCPY(&ph.src, &ip->ip_src, sizeof(uint32_t));
 if (IP_HL(ip) == 5)
  UNALIGNED_MEMCPY(&ph.dst, &ip->ip_dst, sizeof(uint32_t));
 else
  ph.dst = ip_finddst(ndo, ip);

 vec[0].ptr = (const uint8_t *)(void *)&ph;
 vec[0].len = sizeof(ph);
 vec[1].ptr = data;
 vec[1].len = covlen;
 return (in_cksum(vec, 2));
}
