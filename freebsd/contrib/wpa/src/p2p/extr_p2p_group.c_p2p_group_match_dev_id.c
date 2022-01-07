
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct p2p_message {int device_id; } ;
struct p2p_group_member {int dev_addr; struct p2p_group_member* next; } ;
struct p2p_group {struct p2p_group_member* members; TYPE_1__* p2p; } ;
typedef int msg ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_3__ {TYPE_2__* cfg; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int os_memset (struct p2p_message*,int ,int) ;
 scalar_t__ p2p_parse_p2p_ie (struct wpabuf*,struct p2p_message*) ;

int p2p_group_match_dev_id(struct p2p_group *group, struct wpabuf *p2p)
{
 struct p2p_group_member *m;
 struct p2p_message msg;

 os_memset(&msg, 0, sizeof(msg));
 if (p2p_parse_p2p_ie(p2p, &msg))
  return 1;

 if (!msg.device_id)
  return 1;

 if (os_memcmp(msg.device_id, group->p2p->cfg->dev_addr, ETH_ALEN) == 0)
  return 1;

 for (m = group->members; m; m = m->next) {
  if (os_memcmp(msg.device_id, m->dev_addr, ETH_ALEN) == 0)
   return 1;
 }


 return 0;
}
