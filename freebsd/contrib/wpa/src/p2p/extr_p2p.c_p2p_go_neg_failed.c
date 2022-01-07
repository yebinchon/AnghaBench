
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p2p_go_neg_results {int status; int peer_interface_addr; int peer_device_addr; } ;
struct TYPE_3__ {int p2p_device_addr; } ;
struct p2p_device {int intended_addr; TYPE_1__ info; int * go_neg_conf; scalar_t__ oob_pw_id; int wps_method; int flags; } ;
struct p2p_data {scalar_t__ state; TYPE_2__* cfg; struct p2p_device* go_neg_peer; } ;
typedef int res ;
struct TYPE_4__ {int cb_ctx; int (* go_neg_completed ) (int ,struct p2p_go_neg_results*) ;} ;


 int ETH_ALEN ;
 int P2P_DEV_PEER_WAITING_RESPONSE ;
 int P2P_IDLE ;
 scalar_t__ P2P_SEARCH ;
 int WPS_NOT_READY ;
 int eloop_cancel_timeout (int ,struct p2p_data*,int *) ;
 int os_memcpy (int ,int ,int ) ;
 int os_memset (struct p2p_go_neg_results*,int ,int) ;
 int p2p_clear_timeout (struct p2p_data*) ;
 int p2p_go_neg_wait_timeout ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int stub1 (int ,struct p2p_go_neg_results*) ;
 int wpabuf_free (int *) ;

void p2p_go_neg_failed(struct p2p_data *p2p, int status)
{
 struct p2p_go_neg_results res;
 struct p2p_device *peer = p2p->go_neg_peer;

 if (!peer)
  return;

 eloop_cancel_timeout(p2p_go_neg_wait_timeout, p2p, ((void*)0));
 if (p2p->state != P2P_SEARCH) {




  p2p_clear_timeout(p2p);
  p2p_set_state(p2p, P2P_IDLE);
 }

 peer->flags &= ~P2P_DEV_PEER_WAITING_RESPONSE;
 peer->wps_method = WPS_NOT_READY;
 peer->oob_pw_id = 0;
 wpabuf_free(peer->go_neg_conf);
 peer->go_neg_conf = ((void*)0);
 p2p->go_neg_peer = ((void*)0);

 os_memset(&res, 0, sizeof(res));
 res.status = status;
 os_memcpy(res.peer_device_addr, peer->info.p2p_device_addr, ETH_ALEN);
 os_memcpy(res.peer_interface_addr, peer->intended_addr, ETH_ALEN);
 p2p->cfg->go_neg_completed(p2p->cfg->cb_ctx, &res);
}
