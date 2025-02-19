
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct pt_last_ip {unsigned long long ip; scalar_t__ suppressed; int have_ip; } ;


 int pte_internal ;
 int pte_ip_suppressed ;
 int pte_noip ;

int pt_last_ip_query(uint64_t *ip, const struct pt_last_ip *last_ip)
{
 if (!last_ip)
  return -pte_internal;

 if (!last_ip->have_ip) {
  if (ip)
   *ip = 0ull;
  return -pte_noip;
 }

 if (last_ip->suppressed) {
  if (ip)
   *ip = 0ull;
  return -pte_ip_suppressed;
 }

 if (ip)
  *ip = last_ip->ip;

 return 0;
}
