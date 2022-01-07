
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group {scalar_t__ num_members; TYPE_3__* cfg; TYPE_2__* p2p; scalar_t__ group_formation; } ;
struct TYPE_6__ {int persistent_group; scalar_t__ max_clients; scalar_t__ ip_addr_alloc; } ;
struct TYPE_5__ {scalar_t__ cross_connect; TYPE_1__* cfg; int dev_capab; } ;
struct TYPE_4__ {scalar_t__ p2p_intra_bss; } ;


 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ;
 int P2P_GROUP_CAPAB_CROSS_CONN ;
 int P2P_GROUP_CAPAB_GROUP_FORMATION ;
 int P2P_GROUP_CAPAB_GROUP_LIMIT ;
 int P2P_GROUP_CAPAB_GROUP_OWNER ;
 int P2P_GROUP_CAPAB_INTRA_BSS_DIST ;
 int P2P_GROUP_CAPAB_IP_ADDR_ALLOCATION ;
 int P2P_GROUP_CAPAB_PERSISTENT_GROUP ;
 int P2P_GROUP_CAPAB_PERSISTENT_RECONN ;
 int p2p_buf_add_capability (struct wpabuf*,int ,int ) ;

__attribute__((used)) static void p2p_group_add_common_ies(struct p2p_group *group,
         struct wpabuf *ie)
{
 u8 dev_capab = group->p2p->dev_capab, group_capab = 0;


 dev_capab &= ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY;
 group_capab |= P2P_GROUP_CAPAB_GROUP_OWNER;
 if (group->cfg->persistent_group) {
  group_capab |= P2P_GROUP_CAPAB_PERSISTENT_GROUP;
  if (group->cfg->persistent_group == 2)
   group_capab |= P2P_GROUP_CAPAB_PERSISTENT_RECONN;
 }
 if (group->p2p->cfg->p2p_intra_bss)
  group_capab |= P2P_GROUP_CAPAB_INTRA_BSS_DIST;
 if (group->group_formation)
  group_capab |= P2P_GROUP_CAPAB_GROUP_FORMATION;
 if (group->p2p->cross_connect)
  group_capab |= P2P_GROUP_CAPAB_CROSS_CONN;
 if (group->num_members >= group->cfg->max_clients)
  group_capab |= P2P_GROUP_CAPAB_GROUP_LIMIT;
 if (group->cfg->ip_addr_alloc)
  group_capab |= P2P_GROUP_CAPAB_IP_ADDR_ALLOCATION;
 p2p_buf_add_capability(ie, dev_capab, group_capab);
}
