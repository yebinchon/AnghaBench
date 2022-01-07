
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p2p_data {scalar_t__ state; void* pending_action_state; scalar_t__ user_initiated_pd; TYPE_2__* p2ps_prov; TYPE_1__* cfg; scalar_t__ send_action_in_progress; } ;
struct TYPE_4__ {scalar_t__ status; int session_id; int adv_id; int session_mac; int adv_mac; int pd_seeker; } ;
struct TYPE_3__ {int cb_ctx; int (* p2ps_prov_complete ) (int ,scalar_t__,int ,int ,int ,int *,int ,int ,int ,int ,int *,int ,int ,int ,int *,int *,int ,int ,int *,int ) ;int (* send_action_done ) (int ) ;} ;


 scalar_t__ P2P_IDLE ;
 scalar_t__ P2P_LISTEN_ONLY ;
 void* P2P_NO_PENDING_ACTION ;
 int P2P_PD_DURING_FIND ;
 void* P2P_PENDING_PD ;
 scalar_t__ P2P_SC_SUCCESS_DEFERRED ;
 scalar_t__ P2P_SEARCH ;
 int p2p_continue_find (struct p2p_data*) ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_reset_pending_pd (struct p2p_data*) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_set_timeout (struct p2p_data*,int ,int) ;
 int p2ps_prov_free (struct p2p_data*) ;
 int stub1 (int ) ;
 int stub2 (int ,scalar_t__,int ,int ,int ,int *,int ,int ,int ,int ,int *,int ,int ,int ,int *,int *,int ,int ,int *,int ) ;

__attribute__((used)) static void p2p_prov_disc_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "Provision Discovery Request TX callback: success=%d",
  success);
 if (!success) {
  p2p->pending_action_state = P2P_NO_PENDING_ACTION;

  if (p2p->user_initiated_pd &&
      (p2p->state == P2P_SEARCH || p2p->state == P2P_LISTEN_ONLY))
  {

   p2p->pending_action_state = P2P_PENDING_PD;
   p2p_set_timeout(p2p, 0, 50000);
  } else if (p2p->state != P2P_IDLE)
   p2p_continue_find(p2p);
  else if (p2p->user_initiated_pd) {
   p2p->pending_action_state = P2P_PENDING_PD;
   p2p_set_timeout(p2p, 0, 300000);
  }
  return;
 }







 if (p2p->p2ps_prov && !p2p->p2ps_prov->pd_seeker &&
     p2p->p2ps_prov->status != P2P_SC_SUCCESS_DEFERRED) {
  p2p_dbg(p2p, "P2PS PD completion on Follow-on PD Request ACK");

  if (p2p->send_action_in_progress) {
   p2p->send_action_in_progress = 0;
   p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
  }

  p2p->pending_action_state = P2P_NO_PENDING_ACTION;

  if (p2p->cfg->p2ps_prov_complete) {
   p2p->cfg->p2ps_prov_complete(
    p2p->cfg->cb_ctx,
    p2p->p2ps_prov->status,
    p2p->p2ps_prov->adv_mac,
    p2p->p2ps_prov->adv_mac,
    p2p->p2ps_prov->session_mac,
    ((void*)0), p2p->p2ps_prov->adv_id,
    p2p->p2ps_prov->session_id,
    0, 0, ((void*)0), 0, 0, 0,
    ((void*)0), ((void*)0), 0, 0, ((void*)0), 0);
  }

  if (p2p->user_initiated_pd)
   p2p_reset_pending_pd(p2p);

  p2ps_prov_free(p2p);
  return;
 }





 if (p2p->user_initiated_pd)
  p2p->pending_action_state = P2P_PENDING_PD;
 else
  p2p->pending_action_state = P2P_NO_PENDING_ACTION;


 if (p2p->state == P2P_SEARCH)
  p2p_set_state(p2p, P2P_PD_DURING_FIND);
 p2p_set_timeout(p2p, 0, 200000);
}
