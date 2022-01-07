
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_group {int beacon_update; scalar_t__ group_formation; } ;


 int p2p_group_update_ies (struct p2p_group*) ;

void p2p_group_notif_formation_done(struct p2p_group *group)
{
 if (group == ((void*)0))
  return;
 group->group_formation = 0;
 group->beacon_update = 1;
 p2p_group_update_ies(group);
}
