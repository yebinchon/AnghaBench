
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* invite_peer; } ;
struct TYPE_2__ {int flags; } ;


 int P2P_DEV_WAIT_INV_REQ_ACK ;
 int P2P_INVITE ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_set_timeout (struct p2p_data*,int ,int) ;

void p2p_invitation_req_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "Invitation Request TX callback: success=%d", success);

 if (p2p->invite_peer == ((void*)0)) {
  p2p_dbg(p2p, "No pending Invite");
  return;
 }

 if (success)
  p2p->invite_peer->flags &= ~P2P_DEV_WAIT_INV_REQ_ACK;





 p2p_set_state(p2p, P2P_INVITE);
 p2p_set_timeout(p2p, 0, success ? 500000 : 100000);
}
