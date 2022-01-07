
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_data {int intended_addr; } ;


 int ETH_ALEN ;
 int os_memcpy (int ,int const*,int ) ;

void p2p_set_intended_addr(struct p2p_data *p2p, const u8 *intended_addr)
{
 if (p2p && intended_addr)
  os_memcpy(p2p->intended_addr, intended_addr, ETH_ALEN);
}
