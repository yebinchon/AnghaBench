
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {scalar_t__ state; int search_delay; scalar_t__ pending_listen_freq; scalar_t__ p2p_scan_running; TYPE_1__* go_neg_peer; scalar_t__ in_listen; scalar_t__ drv_in_listen; } ;
struct TYPE_2__ {int connect_reqs; } ;


 int P2P_CONNECT ;
 scalar_t__ P2P_CONNECT_LISTEN ;
 scalar_t__ P2P_SEARCH ;
 scalar_t__ P2P_WAIT_PEER_CONNECT ;
 int p2p_connect_send (struct p2p_data*,TYPE_1__*) ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_go_neg_failed (struct p2p_data*,int) ;
 int p2p_search (struct p2p_data*) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_set_timeout (struct p2p_data*,int,int) ;

int p2p_listen_end(struct p2p_data *p2p, unsigned int freq)
{
 p2p_dbg(p2p, "Driver ended Listen state (freq=%u)", freq);
 p2p->drv_in_listen = 0;
 if (p2p->in_listen)
  return 0;

 if (p2p->state == P2P_WAIT_PEER_CONNECT && p2p->go_neg_peer &&
     p2p->pending_listen_freq) {





  p2p_dbg(p2p,
   "Listen operation did not seem to start - delay idle phase to avoid busy loop");
  p2p_set_timeout(p2p, 0, 100000);
  return 1;
 }

 if (p2p->state == P2P_CONNECT_LISTEN && p2p->go_neg_peer) {
  if (p2p->go_neg_peer->connect_reqs >= 120) {
   p2p_dbg(p2p, "Timeout on sending GO Negotiation Request without getting response");
   p2p_go_neg_failed(p2p, -1);
   return 0;
  }

  p2p_set_state(p2p, P2P_CONNECT);
  p2p_connect_send(p2p, p2p->go_neg_peer);
  return 1;
 } else if (p2p->state == P2P_SEARCH) {
  if (p2p->p2p_scan_running) {
   p2p_dbg(p2p, "p2p_scan already in progress - do not try to start a new one");
   return 1;
  }
  if (p2p->pending_listen_freq) {





   p2p_dbg(p2p, "Listen operation did not seem to start - delay search phase to avoid busy loop");
   p2p_set_timeout(p2p, 0, 100000);
   return 1;
  }
  if (p2p->search_delay) {
   p2p_dbg(p2p, "Delay search operation by %u ms",
    p2p->search_delay);
   p2p_set_timeout(p2p, p2p->search_delay / 1000,
     (p2p->search_delay % 1000) * 1000);
   return 1;
  }
  p2p_search(p2p);
  return 1;
 }

 return 0;
}
