
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct p2p_group {TYPE_3__* cfg; TYPE_2__* p2p; } ;
struct TYPE_6__ {size_t ssid_len; int ssid; } ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {int dev_addr; } ;


 size_t ETH_ALEN ;
 scalar_t__ os_memcmp (int const*,int ,size_t) ;

int p2p_group_is_group_id_match(struct p2p_group *group, const u8 *group_id,
    size_t group_id_len)
{
 if (group_id_len != ETH_ALEN + group->cfg->ssid_len)
  return 0;
 if (os_memcmp(group_id, group->p2p->cfg->dev_addr, ETH_ALEN) != 0)
  return 0;
 return os_memcmp(group_id + ETH_ALEN, group->cfg->ssid,
    group->cfg->ssid_len) == 0;
}
