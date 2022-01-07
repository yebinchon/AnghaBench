
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 scalar_t__ os_get_random (int*,int ) ;

int random_mac_addr(u8 *addr)
{
 if (os_get_random(addr, ETH_ALEN) < 0)
  return -1;
 addr[0] &= 0xfe;
 addr[0] |= 0x02;
 return 0;
}
