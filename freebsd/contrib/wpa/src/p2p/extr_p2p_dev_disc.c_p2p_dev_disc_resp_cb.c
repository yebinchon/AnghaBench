
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int cb_ctx; int (* send_action_done ) (int ) ;} ;


 int p2p_dbg (struct p2p_data*,char*,int) ;
 int stub1 (int ) ;

void p2p_dev_disc_resp_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "Device Discoverability Response TX callback: success=%d",
  success);
 p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
}
