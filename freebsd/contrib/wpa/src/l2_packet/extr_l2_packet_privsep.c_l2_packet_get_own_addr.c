
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2_packet_data {int own_addr; } ;


 int ETH_ALEN ;
 int os_memcpy (int *,int ,int ) ;

int l2_packet_get_own_addr(struct l2_packet_data *l2, u8 *addr)
{
 os_memcpy(addr, l2->own_addr, ETH_ALEN);
 return 0;
}
