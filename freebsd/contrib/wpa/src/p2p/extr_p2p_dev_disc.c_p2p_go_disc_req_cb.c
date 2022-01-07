
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {scalar_t__ pending_dev_disc_dialog_token; int pending_dev_disc_freq; int pending_dev_disc_addr; TYPE_1__* cfg; } ;
struct TYPE_2__ {int cb_ctx; int (* send_action_done ) (int ) ;} ;


 int P2P_SC_FAIL_UNABLE_TO_ACCOMMODATE ;
 int P2P_SC_SUCCESS ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_send_dev_disc_resp (struct p2p_data*,scalar_t__,int ,int ,int ) ;
 int stub1 (int ) ;

void p2p_go_disc_req_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "GO Discoverability Request TX callback: success=%d",
  success);
 p2p->cfg->send_action_done(p2p->cfg->cb_ctx);

 if (p2p->pending_dev_disc_dialog_token == 0) {
  p2p_dbg(p2p, "No pending Device Discoverability Request");
  return;
 }

 p2p_send_dev_disc_resp(p2p, p2p->pending_dev_disc_dialog_token,
          p2p->pending_dev_disc_addr,
          p2p->pending_dev_disc_freq,
          success ? P2P_SC_SUCCESS :
          P2P_SC_FAIL_UNABLE_TO_ACCOMMODATE);

 p2p->pending_dev_disc_dialog_token = 0;
}
