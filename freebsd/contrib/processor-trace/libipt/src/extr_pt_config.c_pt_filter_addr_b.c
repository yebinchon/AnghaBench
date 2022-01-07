
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned long long uint64_t ;
struct pt_conf_addr_filter {unsigned long long addr0_a; } ;


 int pt_filter_addr_ncfg () ;

uint64_t pt_filter_addr_b(const struct pt_conf_addr_filter *filter, uint8_t n)
{
 const uint64_t *addr;

 if (!filter)
  return 0ull;

 if (pt_filter_addr_ncfg() <= n)
  return 0ull;

 addr = &filter->addr0_a;
 return addr[(2 * n) + 1];
}
