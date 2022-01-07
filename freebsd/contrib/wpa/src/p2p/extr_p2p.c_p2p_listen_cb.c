
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {unsigned int pending_client_disc_freq; unsigned int pending_listen_freq; unsigned int pending_listen_sec; unsigned int pending_listen_usec; int in_listen; unsigned int drv_in_listen; } ;


 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_set_timeout (struct p2p_data*,unsigned int,int) ;

void p2p_listen_cb(struct p2p_data *p2p, unsigned int freq,
     unsigned int duration)
{
 if (freq == p2p->pending_client_disc_freq) {
  p2p_dbg(p2p, "Client discoverability remain-awake completed");
  p2p->pending_client_disc_freq = 0;
  return;
 }

 if (freq != p2p->pending_listen_freq) {
  p2p_dbg(p2p, "Unexpected listen callback for freq=%u duration=%u (pending_listen_freq=%u)",
   freq, duration, p2p->pending_listen_freq);
  return;
 }

 p2p_dbg(p2p, "Starting Listen timeout(%u,%u) on freq=%u based on callback",
  p2p->pending_listen_sec, p2p->pending_listen_usec,
  p2p->pending_listen_freq);
 p2p->in_listen = 1;
 p2p->drv_in_listen = freq;
 if (p2p->pending_listen_sec || p2p->pending_listen_usec) {





  p2p_set_timeout(p2p, p2p->pending_listen_sec,
    p2p->pending_listen_usec + 20000);
 }

 p2p->pending_listen_freq = 0;
}
