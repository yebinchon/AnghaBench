
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {int invite_dev_pw_id; int invite_go_dev_addr; int * invite_peer; TYPE_1__* cfg; scalar_t__ pending_listen_freq; } ;
struct TYPE_2__ {int cb_ctx; int (* stop_listen ) (int ) ;} ;


 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_invite_send (struct p2p_data*,int *,int ,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void p2p_invite_start(void *eloop_ctx, void *timeout_ctx)
{
 struct p2p_data *p2p = eloop_ctx;
 if (p2p->invite_peer == ((void*)0))
  return;
 if (p2p->pending_listen_freq) {
  p2p_dbg(p2p, "Clear pending_listen_freq for p2p_invite_start");
  p2p->pending_listen_freq = 0;
 }
 p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
 p2p_invite_send(p2p, p2p->invite_peer, p2p->invite_go_dev_addr,
   p2p->invite_dev_pw_id);
}
