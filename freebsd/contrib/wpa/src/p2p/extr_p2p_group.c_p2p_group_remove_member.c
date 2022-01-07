
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_group_member {struct p2p_group_member* next; int addr; } ;
struct p2p_group {int num_members; struct p2p_group_member* members; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int p2p_group_free_member (struct p2p_group_member*) ;

__attribute__((used)) static int p2p_group_remove_member(struct p2p_group *group, const u8 *addr)
{
 struct p2p_group_member *m, *prev;

 if (group == ((void*)0))
  return 0;

 m = group->members;
 prev = ((void*)0);
 while (m) {
  if (os_memcmp(m->addr, addr, ETH_ALEN) == 0)
   break;
  prev = m;
  m = m->next;
 }

 if (m == ((void*)0))
  return 0;

 if (prev)
  prev->next = m->next;
 else
  group->members = m->next;
 p2p_group_free_member(m);
 group->num_members--;

 return 1;
}
