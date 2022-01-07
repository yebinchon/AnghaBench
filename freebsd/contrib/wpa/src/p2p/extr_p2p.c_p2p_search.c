
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct p2p_data {scalar_t__ find_type; int find_specified_freq; int find_dev_id; int req_dev_types; int num_req_dev_types; TYPE_1__* cfg; scalar_t__ find_pending_full; scalar_t__ drv_in_listen; } ;
typedef enum p2p_scan_type { ____Placeholder_p2p_scan_type } p2p_scan_type ;
struct TYPE_2__ {int (* p2p_scan ) (int ,int,int,int ,int ,int ,int ) ;int cb_ctx; int (* stop_listen ) (int ) ;} ;


 int DEV_PW_DEFAULT ;
 scalar_t__ P2P_FIND_PROGRESSIVE ;
 scalar_t__ P2P_FIND_START_WITH_FULL ;
 int P2P_SCAN_FULL ;
 int P2P_SCAN_SOCIAL ;
 int P2P_SCAN_SOCIAL_PLUS_ONE ;
 int p2p_continue_find (struct p2p_data*) ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_get_next_prog_freq (struct p2p_data*) ;
 int stub1 (int ) ;
 int stub2 (int ,int,int,int ,int ,int ,int ) ;

__attribute__((used)) static void p2p_search(struct p2p_data *p2p)
{
 int freq = 0;
 enum p2p_scan_type type;
 u16 pw_id = DEV_PW_DEFAULT;
 int res;

 if (p2p->drv_in_listen) {
  p2p_dbg(p2p, "Driver is still in Listen state - wait for it to end before continuing");
  return;
 }
 p2p->cfg->stop_listen(p2p->cfg->cb_ctx);

 if (p2p->find_pending_full &&
     (p2p->find_type == P2P_FIND_PROGRESSIVE ||
      p2p->find_type == P2P_FIND_START_WITH_FULL)) {
  type = P2P_SCAN_FULL;
  p2p_dbg(p2p, "Starting search (pending full scan)");
  p2p->find_pending_full = 0;
 } else if ((p2p->find_type == P2P_FIND_PROGRESSIVE &&
     (freq = p2p_get_next_prog_freq(p2p)) > 0) ||
     (p2p->find_type == P2P_FIND_START_WITH_FULL &&
      (freq = p2p->find_specified_freq) > 0)) {
  type = P2P_SCAN_SOCIAL_PLUS_ONE;
  p2p_dbg(p2p, "Starting search (+ freq %u)", freq);
 } else {
  type = P2P_SCAN_SOCIAL;
  p2p_dbg(p2p, "Starting search");
 }

 res = p2p->cfg->p2p_scan(p2p->cfg->cb_ctx, type, freq,
     p2p->num_req_dev_types, p2p->req_dev_types,
     p2p->find_dev_id, pw_id);
 if (res < 0) {
  p2p_dbg(p2p, "Scan request schedule failed");
  p2p_continue_find(p2p);
 }
}
