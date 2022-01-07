
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {scalar_t__ inv_role; TYPE_1__* cfg; } ;
struct TYPE_2__ {int cb_ctx; int (* send_action_done ) (int ) ;} ;


 int P2P_INVITE_LISTEN ;
 scalar_t__ P2P_INVITE_ROLE_ACTIVE_GO ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_listen_in_find (struct p2p_data*,int ) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_set_timeout (struct p2p_data*,int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void p2p_timeout_invite(struct p2p_data *p2p)
{
 p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
 p2p_set_state(p2p, P2P_INVITE_LISTEN);
 if (p2p->inv_role == P2P_INVITE_ROLE_ACTIVE_GO) {




  p2p_dbg(p2p, "Inviting in active GO role - wait on operating channel");
  p2p_set_timeout(p2p, 0, 100000);
  return;
 }
 p2p_listen_in_find(p2p, 0);
}
