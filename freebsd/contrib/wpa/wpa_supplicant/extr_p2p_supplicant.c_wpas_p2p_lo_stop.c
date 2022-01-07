
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_lo_started; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_drv_p2p_lo_stop (struct wpa_supplicant*) ;

int wpas_p2p_lo_stop(struct wpa_supplicant *wpa_s)
{
 int ret;

 if (!wpa_s->p2p_lo_started)
  return 0;

 ret = wpa_drv_p2p_lo_stop(wpa_s);
 if (ret < 0)
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Failed to stop P2P listen offload");

 wpa_s->p2p_lo_started = 0;
 return ret;
}
