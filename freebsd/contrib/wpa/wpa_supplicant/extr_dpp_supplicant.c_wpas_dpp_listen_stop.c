
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ dpp_listen_freq; scalar_t__ dpp_in_response_listen; } ;


 int MSG_DEBUG ;
 int wpa_drv_cancel_remain_on_channel (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*,scalar_t__) ;
 int wpas_dpp_listen_work_done (struct wpa_supplicant*) ;

void wpas_dpp_listen_stop(struct wpa_supplicant *wpa_s)
{
 wpa_s->dpp_in_response_listen = 0;
 if (!wpa_s->dpp_listen_freq)
  return;

 wpa_printf(MSG_DEBUG, "DPP: Stop listen on %u MHz",
     wpa_s->dpp_listen_freq);
 wpa_drv_cancel_remain_on_channel(wpa_s);
 wpa_s->dpp_listen_freq = 0;
 wpas_dpp_listen_work_done(wpa_s);
}
