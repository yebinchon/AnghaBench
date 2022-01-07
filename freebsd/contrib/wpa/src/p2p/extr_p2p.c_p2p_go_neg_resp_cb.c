
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {scalar_t__ state; int go_neg_peer; } ;


 int P2P_CONNECT ;
 scalar_t__ P2P_PROVISIONING ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_set_timeout (struct p2p_data*,int ,int) ;

__attribute__((used)) static void p2p_go_neg_resp_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "GO Negotiation Response TX callback: success=%d",
  success);
 if (!p2p->go_neg_peer && p2p->state == P2P_PROVISIONING) {
  p2p_dbg(p2p, "Ignore TX callback event - GO Negotiation is not running anymore");
  return;
 }
 p2p_set_state(p2p, P2P_CONNECT);
 p2p_set_timeout(p2p, 0, 500000);
}
