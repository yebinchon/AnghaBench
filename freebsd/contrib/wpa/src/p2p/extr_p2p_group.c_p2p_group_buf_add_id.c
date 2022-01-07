
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct p2p_group {TYPE_3__* cfg; TYPE_2__* p2p; } ;
struct TYPE_6__ {int ssid_len; int ssid; } ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {int dev_addr; } ;


 int p2p_buf_add_group_id (struct wpabuf*,int ,int ,int ) ;

void p2p_group_buf_add_id(struct p2p_group *group, struct wpabuf *buf)
{
 p2p_buf_add_group_id(buf, group->p2p->cfg->dev_addr, group->cfg->ssid,
        group->cfg->ssid_len);
}
