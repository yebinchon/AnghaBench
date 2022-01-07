
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct p2p_data {TYPE_3__* invite_peer; TYPE_1__* cfg; int invite_dev_pw_id; int invite_go_dev_addr; } ;
struct TYPE_5__ {int p2p_device_addr; } ;
struct TYPE_6__ {int invitation_reqs; TYPE_2__ info; } ;
struct TYPE_4__ {int cb_ctx; int (* invitation_result ) (int ,int,int *,int *,int ,int ,int ) ;} ;


 int P2P_IDLE ;
 int P2P_INVITE ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_invite_send (struct p2p_data*,TYPE_3__*,int ,int ) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int stub1 (int ,int,int *,int *,int ,int ,int ) ;

__attribute__((used)) static void p2p_timeout_invite_listen(struct p2p_data *p2p)
{
 if (p2p->invite_peer && p2p->invite_peer->invitation_reqs < 100) {
  p2p_set_state(p2p, P2P_INVITE);
  p2p_invite_send(p2p, p2p->invite_peer,
    p2p->invite_go_dev_addr, p2p->invite_dev_pw_id);
 } else {
  if (p2p->invite_peer) {
   p2p_dbg(p2p, "Invitation Request retry limit reached");
   if (p2p->cfg->invitation_result)
    p2p->cfg->invitation_result(
     p2p->cfg->cb_ctx, -1, ((void*)0), ((void*)0),
     p2p->invite_peer->info.p2p_device_addr,
     0, 0);
  }
  p2p_set_state(p2p, P2P_IDLE);
 }
}
