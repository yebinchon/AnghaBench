
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {unsigned int num_groups; struct p2p_group** groups; } ;



void p2p_loop_on_all_groups(struct p2p_data *p2p,
       int (*group_callback)(struct p2p_group *group,
        void *user_data),
       void *user_data)
{
 unsigned int i;

 for (i = 0; i < p2p->num_groups; i++) {
  if (!group_callback(p2p->groups[i], user_data))
   break;
 }
}
