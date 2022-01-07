
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t ETH_ALEN ;

__attribute__((used)) static int match_mac_mask(const u8 *addr_a, const u8 *addr_b, const u8 *mask)
{
 size_t i;

 for (i = 0; i < ETH_ALEN; i++) {
  if ((addr_a[i] & mask[i]) != (addr_b[i] & mask[i]))
   return 0;
 }
 return 1;
}
