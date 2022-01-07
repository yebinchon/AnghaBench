
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; int pending_action_state; scalar_t__ send_action_in_progress; } ;
struct TYPE_2__ {int (* prov_disc_resp_cb ) (int ) ;int cb_ctx; int (* send_action_done ) (int ) ;} ;


 int P2P_NO_PENDING_ACTION ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void p2p_prov_disc_resp_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "Provision Discovery Response TX callback: success=%d",
  success);

 if (p2p->send_action_in_progress) {
  p2p->send_action_in_progress = 0;
  p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
 }

 p2p->pending_action_state = P2P_NO_PENDING_ACTION;

 if (!success)
  return;

 if (!p2p->cfg->prov_disc_resp_cb ||
     p2p->cfg->prov_disc_resp_cb(p2p->cfg->cb_ctx) < 1)
  return;

 p2p_dbg(p2p,
  "Post-Provision Discovery operations started - do not try to continue other P2P operations");
}
