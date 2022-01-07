
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct p2p_data {int pending_listen_freq; unsigned int pending_listen_sec; unsigned int pending_listen_usec; scalar_t__ start_after_scan; TYPE_1__* cfg; scalar_t__ p2p_scan_running; } ;
struct TYPE_2__ {scalar_t__ (* start_listen ) (int ,int,unsigned int,struct wpabuf*) ;int cb_ctx; int channel; int reg_class; } ;


 scalar_t__ P2P_AFTER_SCAN_CONNECT ;
 scalar_t__ P2P_AFTER_SCAN_LISTEN ;
 int P2P_LISTEN_ONLY ;
 struct wpabuf* p2p_build_probe_resp_ies (struct p2p_data*,int *,int ) ;
 int p2p_channel_to_freq (int ,int ) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 scalar_t__ stub1 (int ,int,unsigned int,struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;

int p2p_listen(struct p2p_data *p2p, unsigned int timeout)
{
 int freq;
 struct wpabuf *ies;

 p2p_dbg(p2p, "Going to listen(only) state");

 if (p2p->pending_listen_freq) {

  p2p_dbg(p2p, "p2p_listen command pending already");
  return -1;
 }

 freq = p2p_channel_to_freq(p2p->cfg->reg_class, p2p->cfg->channel);
 if (freq < 0) {
  p2p_dbg(p2p, "Unknown regulatory class/channel");
  return -1;
 }

 p2p->pending_listen_sec = timeout / 1000;
 p2p->pending_listen_usec = (timeout % 1000) * 1000;

 if (p2p->p2p_scan_running) {
  if (p2p->start_after_scan == P2P_AFTER_SCAN_CONNECT) {
   p2p_dbg(p2p, "p2p_scan running - connect is already pending - skip listen");
   return 0;
  }
  p2p_dbg(p2p, "p2p_scan running - delay start of listen state");
  p2p->start_after_scan = P2P_AFTER_SCAN_LISTEN;
  return 0;
 }

 ies = p2p_build_probe_resp_ies(p2p, ((void*)0), 0);
 if (ies == ((void*)0))
  return -1;

 p2p->pending_listen_freq = freq;

 if (p2p->cfg->start_listen(p2p->cfg->cb_ctx, freq, timeout, ies) < 0) {
  p2p_dbg(p2p, "Failed to start listen mode");
  p2p->pending_listen_freq = 0;
  wpabuf_free(ies);
  return -1;
 }
 wpabuf_free(ies);

 p2p_set_state(p2p, P2P_LISTEN_ONLY);

 return 0;
}
