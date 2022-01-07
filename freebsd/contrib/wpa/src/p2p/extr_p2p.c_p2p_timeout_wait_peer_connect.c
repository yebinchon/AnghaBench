
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int cb_ctx; scalar_t__ (* is_concurrent_session_active ) (int ) ;} ;


 int P2P_WAIT_PEER_IDLE ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_set_timeout (struct p2p_data*,int ,int) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static void p2p_timeout_wait_peer_connect(struct p2p_data *p2p)
{
 p2p_set_state(p2p, P2P_WAIT_PEER_IDLE);

 if (p2p->cfg->is_concurrent_session_active &&
     p2p->cfg->is_concurrent_session_active(p2p->cfg->cb_ctx))
  p2p_set_timeout(p2p, 0, 500000);
 else
  p2p_set_timeout(p2p, 0, 200000);
}
