
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p2p_data {TYPE_2__* go_neg_peer; TYPE_1__* cfg; scalar_t__ pending_listen_freq; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int cb_ctx; int (* stop_listen ) (int ) ;} ;


 int P2P_SC_SUCCESS ;
 int p2p_connect_send (struct p2p_data*,TYPE_2__*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_set_timeout (struct p2p_data*,int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void p2p_go_neg_start(void *eloop_ctx, void *timeout_ctx)
{
 struct p2p_data *p2p = eloop_ctx;
 if (p2p->go_neg_peer == ((void*)0))
  return;
 if (p2p->pending_listen_freq) {
  p2p_dbg(p2p, "Clear pending_listen_freq for p2p_go_neg_start");
  p2p->pending_listen_freq = 0;
 }
 p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
 p2p->go_neg_peer->status = P2P_SC_SUCCESS;




 p2p_set_timeout(p2p, 0, 500000);
 p2p_connect_send(p2p, p2p->go_neg_peer);
}
