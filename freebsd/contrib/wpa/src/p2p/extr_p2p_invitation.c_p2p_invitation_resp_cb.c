
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {int inv_op_freq; int inv_status; int inv_go_dev_addr; int inv_ssid_len; int inv_ssid; int inv_group_bssid_ptr; int inv_sa; TYPE_1__* cfg; } ;
struct TYPE_2__ {int cb_ctx; int (* invitation_received ) (int ,int ,int ,int ,int ,int ,int ,int ) ;int (* send_action_done ) (int ) ;} ;


 int p2p_dbg (struct p2p_data*,char*,...) ;
 int stub1 (int ) ;
 int stub2 (int ,int ,int ,int ,int ,int ,int ,int ) ;

void p2p_invitation_resp_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "Invitation Response TX callback: success=%d", success);
 p2p->cfg->send_action_done(p2p->cfg->cb_ctx);

 if (!success)
  p2p_dbg(p2p, "Assume Invitation Response was actually received by the peer even though Ack was not reported");

 if (p2p->cfg->invitation_received) {
  p2p->cfg->invitation_received(p2p->cfg->cb_ctx,
           p2p->inv_sa,
           p2p->inv_group_bssid_ptr,
           p2p->inv_ssid, p2p->inv_ssid_len,
           p2p->inv_go_dev_addr,
           p2p->inv_status,
           p2p->inv_op_freq);
 }
}
