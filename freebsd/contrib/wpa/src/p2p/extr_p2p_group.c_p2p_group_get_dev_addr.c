
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_group_member {int const* dev_addr; } ;
struct p2p_group {int dummy; } ;


 int is_zero_ether_addr (int const*) ;
 struct p2p_group_member* p2p_group_get_client_iface (struct p2p_group*,int const*) ;

const u8 * p2p_group_get_dev_addr(struct p2p_group *group, const u8 *addr)
{
 struct p2p_group_member *m;

 if (group == ((void*)0))
  return ((void*)0);
 m = p2p_group_get_client_iface(group, addr);
 if (m && !is_zero_ether_addr(m->dev_addr))
  return m->dev_addr;
 return ((void*)0);
}
