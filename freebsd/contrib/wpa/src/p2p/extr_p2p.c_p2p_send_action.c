
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_data {scalar_t__ drv_in_listen; scalar_t__ in_listen; TYPE_1__* cfg; } ;
struct TYPE_2__ {int (* send_action ) (int ,unsigned int,int const*,int const*,int const*,int const*,size_t,unsigned int,int*) ;int cb_ctx; } ;


 int p2p_dbg (struct p2p_data*,char*,scalar_t__,unsigned int) ;
 int p2p_stop_listen_for_freq (struct p2p_data*,unsigned int) ;
 int stub1 (int ,unsigned int,int const*,int const*,int const*,int const*,size_t,unsigned int,int*) ;

int p2p_send_action(struct p2p_data *p2p, unsigned int freq, const u8 *dst,
      const u8 *src, const u8 *bssid, const u8 *buf,
      size_t len, unsigned int wait_time)
{
 int res, scheduled;

 res = p2p->cfg->send_action(p2p->cfg->cb_ctx, freq, dst, src, bssid,
        buf, len, wait_time, &scheduled);
 if (res == 0 && scheduled && p2p->in_listen && freq > 0 &&
     (unsigned int) p2p->drv_in_listen != freq) {
  p2p_dbg(p2p,
   "Stop listen on %d MHz to allow a frame to be sent immediately on %d MHz",
   p2p->drv_in_listen, freq);
  p2p_stop_listen_for_freq(p2p, freq);
 }
 return res;
}
