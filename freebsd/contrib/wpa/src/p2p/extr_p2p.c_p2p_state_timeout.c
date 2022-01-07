
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {int state; int search_delay; int in_search_delay; int ext_listen_only; int pending_action_state; TYPE_1__* cfg; scalar_t__ drv_in_listen; scalar_t__ in_listen; } ;
struct TYPE_2__ {int cb_ctx; int (* stop_listen ) (int ) ;} ;
 int P2P_PENDING_PD ;





 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_search (struct p2p_data*) ;
 int p2p_set_state (struct p2p_data*,int const) ;
 int p2p_set_timeout (struct p2p_data*,int,int) ;
 int p2p_state_txt (int) ;
 int p2p_timeout_connect (struct p2p_data*) ;
 int p2p_timeout_connect_listen (struct p2p_data*) ;
 int p2p_timeout_invite (struct p2p_data*) ;
 int p2p_timeout_invite_listen (struct p2p_data*) ;
 int p2p_timeout_prov_disc_during_find (struct p2p_data*) ;
 int p2p_timeout_prov_disc_req (struct p2p_data*) ;
 int p2p_timeout_sd_during_find (struct p2p_data*) ;
 int p2p_timeout_wait_peer_connect (struct p2p_data*) ;
 int p2p_timeout_wait_peer_idle (struct p2p_data*) ;
 int stub1 (int ) ;

__attribute__((used)) static void p2p_state_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct p2p_data *p2p = eloop_ctx;

 p2p_dbg(p2p, "Timeout (state=%s)", p2p_state_txt(p2p->state));

 p2p->in_listen = 0;
 if (p2p->drv_in_listen) {
  p2p_dbg(p2p, "Driver is still in listen state - stop it");
  p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
 }

 switch (p2p->state) {
 case 137:

  if (p2p->pending_action_state == P2P_PENDING_PD)
   p2p_timeout_prov_disc_req(p2p);
  break;
 case 130:

  if (p2p->pending_action_state == P2P_PENDING_PD)
   p2p_timeout_prov_disc_req(p2p);
  if (p2p->search_delay && !p2p->in_search_delay) {
   p2p_dbg(p2p, "Delay search operation by %u ms",
    p2p->search_delay);
   p2p->in_search_delay = 1;
   p2p_set_timeout(p2p, p2p->search_delay / 1000,
     (p2p->search_delay % 1000) * 1000);
   break;
  }
  p2p->in_search_delay = 0;
  p2p_search(p2p);
  break;
 case 140:
  p2p_timeout_connect(p2p);
  break;
 case 139:
  p2p_timeout_connect_listen(p2p);
  break;
 case 138:
  break;
 case 134:

  if (p2p->pending_action_state == P2P_PENDING_PD)
   p2p_timeout_prov_disc_req(p2p);

  if (p2p->ext_listen_only) {
   p2p_dbg(p2p, "Extended Listen Timing - Listen State completed");
   p2p->ext_listen_only = 0;
   p2p_set_state(p2p, 137);
  }
  break;
 case 129:
  p2p_timeout_wait_peer_connect(p2p);
  break;
 case 128:
  p2p_timeout_wait_peer_idle(p2p);
  break;
 case 131:
  p2p_timeout_sd_during_find(p2p);
  break;
 case 132:
  break;
 case 133:
  p2p_timeout_prov_disc_during_find(p2p);
  break;
 case 136:
  p2p_timeout_invite(p2p);
  break;
 case 135:
  p2p_timeout_invite_listen(p2p);
  break;
 }
}
