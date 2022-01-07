
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {int drv_in_listen; TYPE_1__* cfg; scalar_t__ in_listen; } ;
struct TYPE_2__ {int cb_ctx; int (* stop_listen ) (int ) ;} ;


 int p2p_clear_timeout (struct p2p_data*) ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int stub1 (int ) ;

void p2p_stop_listen_for_freq(struct p2p_data *p2p, int freq)
{
 if (freq > 0 && p2p->drv_in_listen == freq && p2p->in_listen) {
  p2p_dbg(p2p, "Skip stop_listen since we are on correct channel for response");
  return;
 }
 if (p2p->in_listen) {
  p2p->in_listen = 0;
  p2p_clear_timeout(p2p);
 }
 if (p2p->drv_in_listen) {





  p2p_dbg(p2p, "Clear drv_in_listen (%d)", p2p->drv_in_listen);
  p2p->drv_in_listen = 0;
 }
 p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
}
