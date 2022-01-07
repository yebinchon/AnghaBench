
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_group_member {int dev_addr; struct p2p_group_member* next; } ;
struct p2p_group {struct p2p_group_member* members; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int const*,int ,int ) ;

__attribute__((used)) static struct p2p_group_member * p2p_group_get_client(struct p2p_group *group,
            const u8 *dev_id)
{
 struct p2p_group_member *m;

 for (m = group->members; m; m = m->next) {
  if (os_memcmp(dev_id, m->dev_addr, ETH_ALEN) == 0)
   return m;
 }

 return ((void*)0);
}
