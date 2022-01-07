
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p2p_data {scalar_t__ state; scalar_t__ send_action_in_progress; int * invite_peer; int * sd_peer; TYPE_2__* go_neg_peer; int start_after_scan; scalar_t__ p2ps_seek_count; TYPE_1__* cfg; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int cb_ctx; int (* find_stopped ) (int ) ;} ;


 int P2P_AFTER_SCAN_NOTHING ;
 int P2P_DEV_PEER_WAITING_RESPONSE ;
 int P2P_IDLE ;
 scalar_t__ P2P_SD_DURING_FIND ;
 scalar_t__ P2P_SEARCH ;
 int eloop_cancel_timeout (int ,struct p2p_data*,int *) ;
 int p2p_clear_timeout (struct p2p_data*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_find_timeout ;
 int p2p_free_req_dev_types (struct p2p_data*) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_stop_listen_for_freq (struct p2p_data*,int) ;
 int stub1 (int ) ;

void p2p_stop_find_for_freq(struct p2p_data *p2p, int freq)
{
 p2p_dbg(p2p, "Stopping find");
 eloop_cancel_timeout(p2p_find_timeout, p2p, ((void*)0));
 p2p_clear_timeout(p2p);
 if (p2p->state == P2P_SEARCH || p2p->state == P2P_SD_DURING_FIND)
  p2p->cfg->find_stopped(p2p->cfg->cb_ctx);

 p2p->p2ps_seek_count = 0;

 p2p_set_state(p2p, P2P_IDLE);
 p2p_free_req_dev_types(p2p);
 p2p->start_after_scan = P2P_AFTER_SCAN_NOTHING;
 if (p2p->go_neg_peer)
  p2p->go_neg_peer->flags &= ~P2P_DEV_PEER_WAITING_RESPONSE;
 p2p->go_neg_peer = ((void*)0);
 p2p->sd_peer = ((void*)0);
 p2p->invite_peer = ((void*)0);
 p2p_stop_listen_for_freq(p2p, freq);
 p2p->send_action_in_progress = 0;
}
