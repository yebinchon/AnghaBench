
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_group_member {int const* addr; } ;
struct p2p_group {int dummy; } ;


 struct p2p_group_member* p2p_group_get_client (struct p2p_group*,int const*) ;

const u8 * p2p_group_get_client_interface_addr(struct p2p_group *group,
            const u8 *dev_addr)
{
 struct p2p_group_member *m;

 if (!group)
  return ((void*)0);
 m = p2p_group_get_client(group, dev_addr);
 if (m)
  return m->addr;
 return ((void*)0);
}
