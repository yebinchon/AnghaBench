
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_group {unsigned int num_members; } ;



unsigned int p2p_get_group_num_members(struct p2p_group *group)
{
 if (!group)
  return 0;

 return group->num_members;
}
