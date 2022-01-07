
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {scalar_t__ state; } ;


 int P2P_IDLE ;
 scalar_t__ P2P_LISTEN_ONLY ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_stop_listen_for_freq (struct p2p_data*,int ) ;

void p2p_stop_listen(struct p2p_data *p2p)
{
 if (p2p->state != P2P_LISTEN_ONLY) {
  p2p_dbg(p2p, "Skip stop_listen since not in listen_only state.");
  return;
 }

 p2p_stop_listen_for_freq(p2p, 0);
 p2p_set_state(p2p, P2P_IDLE);
}
