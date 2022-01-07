
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* go_neg_peer; scalar_t__ drv_in_listen; } ;
struct TYPE_2__ {int connect_reqs; } ;


 int P2P_CONNECT ;
 int P2P_IDLE ;
 int p2p_connect_send (struct p2p_data*,TYPE_1__*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_go_neg_failed (struct p2p_data*,int) ;
 int p2p_set_state (struct p2p_data*,int ) ;

__attribute__((used)) static void p2p_timeout_connect_listen(struct p2p_data *p2p)
{
 if (p2p->go_neg_peer) {
  if (p2p->drv_in_listen) {
   p2p_dbg(p2p, "Driver is still in Listen state; wait for it to complete");
   return;
  }

  if (p2p->go_neg_peer->connect_reqs >= 120) {
   p2p_dbg(p2p, "Timeout on sending GO Negotiation Request without getting response");
   p2p_go_neg_failed(p2p, -1);
   return;
  }

  p2p_set_state(p2p, P2P_CONNECT);
  p2p_connect_send(p2p, p2p->go_neg_peer);
 } else
  p2p_set_state(p2p, P2P_IDLE);
}
