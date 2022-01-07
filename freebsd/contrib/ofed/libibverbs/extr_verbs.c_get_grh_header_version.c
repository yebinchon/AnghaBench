
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ip {int ip_v; int ip_hl; scalar_t__ ip_sum; } ;
struct ibv_grh {int version_tclass_flow; } ;
typedef int ip4h_checked ;


 int EPROTONOSUPPORT ;
 int be32toh (int ) ;
 int errno ;
 scalar_t__ ipv4_calc_hdr_csum (int *,int) ;
 int memcpy (struct ip*,struct ip*,int) ;

__attribute__((used)) static inline int get_grh_header_version(struct ibv_grh *grh)
{
 int ip6h_version = (be32toh(grh->version_tclass_flow) >> 28) & 0xf;
 struct ip *ip4h = (struct ip *)((void *)grh + 20);
 struct ip ip4h_checked;

 if (ip6h_version != 6) {
  if (ip4h->ip_v == 4)
   return 4;
  errno = EPROTONOSUPPORT;
  return -1;
 }

 if (ip4h->ip_hl != 5)
  return 6;





 memcpy(&ip4h_checked, ip4h, sizeof(ip4h_checked));



 ip4h_checked.ip_sum = 0;
 ip4h_checked.ip_sum = ipv4_calc_hdr_csum((uint16_t *)&ip4h_checked, 10);

 if (ip4h->ip_sum == ip4h_checked.ip_sum)
  return 4;
 return 6;
}
