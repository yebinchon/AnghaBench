
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int p2p_cli_probe; scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; } ;


 int wpa_drv_cancel_remain_on_channel (struct wpa_supplicant*) ;
 int wpa_drv_probe_req_report (struct wpa_supplicant*,int ) ;
 int wpa_drv_set_ap_wps_ie (struct wpa_supplicant*,int *,int *,int *) ;
 int wpas_p2p_listen_work_done (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_stop_listen(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;
 if (wpa_s->off_channel_freq || wpa_s->roc_waiting_drv_freq) {
  wpa_drv_cancel_remain_on_channel(wpa_s);
  wpa_s->off_channel_freq = 0;
  wpa_s->roc_waiting_drv_freq = 0;
 }
 wpa_drv_set_ap_wps_ie(wpa_s, ((void*)0), ((void*)0), ((void*)0));





 if (!wpa_s->p2p_cli_probe)
  wpa_drv_probe_req_report(wpa_s, 0);

 wpas_p2p_listen_work_done(wpa_s);
}
