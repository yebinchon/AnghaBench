
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p2p_device_addr; } ;
struct p2p_device {scalar_t__ go_neg_conf_sent; scalar_t__ go_neg_conf; TYPE_1__ info; int go_neg_conf_freq; } ;
struct p2p_data {TYPE_2__* cfg; int pending_action_state; struct p2p_device* go_neg_peer; } ;
typedef enum p2p_send_action_result { ____Placeholder_p2p_send_action_result } p2p_send_action_result ;
struct TYPE_4__ {int cb_ctx; int (* send_action_done ) (int ) ;int dev_addr; } ;


 scalar_t__ P2P_GO_NEG_CNF_MAX_RETRY_COUNT ;
 int P2P_PENDING_GO_NEG_CONFIRM ;
 int P2P_SEND_ACTION_FAILED ;
 int P2P_SEND_ACTION_NO_ACK ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_go_complete (struct p2p_data*,struct p2p_device*) ;
 int p2p_go_neg_failed (struct p2p_data*,int) ;
 scalar_t__ p2p_send_action (struct p2p_data*,int ,int ,int ,int ,int ,int ,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int wpabuf_head (scalar_t__) ;
 int wpabuf_len (scalar_t__) ;

__attribute__((used)) static void p2p_go_neg_conf_cb(struct p2p_data *p2p,
          enum p2p_send_action_result result)
{
 struct p2p_device *dev;

 p2p_dbg(p2p, "GO Negotiation Confirm TX callback: result=%d", result);
 if (result == P2P_SEND_ACTION_FAILED) {
  p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
  p2p_go_neg_failed(p2p, -1);
  return;
 }

 dev = p2p->go_neg_peer;

 if (result == P2P_SEND_ACTION_NO_ACK) {





  if (dev && dev->go_neg_conf &&
      dev->go_neg_conf_sent <= P2P_GO_NEG_CNF_MAX_RETRY_COUNT) {
   p2p_dbg(p2p, "GO Negotiation Confirm retry %d",
    dev->go_neg_conf_sent);
   p2p->pending_action_state = P2P_PENDING_GO_NEG_CONFIRM;
   if (p2p_send_action(p2p, dev->go_neg_conf_freq,
         dev->info.p2p_device_addr,
         p2p->cfg->dev_addr,
         dev->info.p2p_device_addr,
         wpabuf_head(dev->go_neg_conf),
         wpabuf_len(dev->go_neg_conf), 0) >=
       0) {
    dev->go_neg_conf_sent++;
    return;
   }
   p2p_dbg(p2p, "Failed to re-send Action frame");





  }
  p2p_dbg(p2p, "Assume GO Negotiation Confirm TX was actually received by the peer even though Ack was not reported");
 }

 p2p->cfg->send_action_done(p2p->cfg->cb_ctx);

 if (dev == ((void*)0))
  return;

 p2p_go_complete(p2p, dev);
}
