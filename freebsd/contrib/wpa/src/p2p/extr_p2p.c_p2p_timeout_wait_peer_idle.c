
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_device {int dummy; } ;
struct p2p_data {struct p2p_device* go_neg_peer; } ;


 int P2P_WAIT_PEER_CONNECT ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_listen_in_find (struct p2p_data*,int ) ;
 int p2p_set_state (struct p2p_data*,int ) ;

__attribute__((used)) static void p2p_timeout_wait_peer_idle(struct p2p_data *p2p)
{
 struct p2p_device *dev = p2p->go_neg_peer;

 if (dev == ((void*)0)) {
  p2p_dbg(p2p, "Unknown GO Neg peer - stop GO Neg wait");
  return;
 }

 p2p_dbg(p2p, "Go to Listen state while waiting for the peer to become ready for GO Negotiation");
 p2p_set_state(p2p, P2P_WAIT_PEER_CONNECT);
 p2p_listen_in_find(p2p, 0);
}
