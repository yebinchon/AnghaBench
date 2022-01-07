
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dpp_listen_work {unsigned int freq; } ;
struct wpa_supplicant {unsigned int dpp_listen_freq; scalar_t__ dpp_listen_work; } ;


 int MSG_DEBUG ;
 int dpp_start_listen_cb ;
 struct wpas_dpp_listen_work* os_zalloc (int) ;
 scalar_t__ radio_add_work (struct wpa_supplicant*,unsigned int,char*,int ,int ,struct wpas_dpp_listen_work*) ;
 int wpa_printf (int ,char*) ;
 int wpas_dpp_listen_stop (struct wpa_supplicant*) ;
 int wpas_dpp_listen_work_free (struct wpas_dpp_listen_work*) ;

__attribute__((used)) static int wpas_dpp_listen_start(struct wpa_supplicant *wpa_s,
     unsigned int freq)
{
 struct wpas_dpp_listen_work *lwork;

 if (wpa_s->dpp_listen_work) {
  wpa_printf(MSG_DEBUG,
      "DPP: Reject start_listen since dpp_listen_work already exists");
  return -1;
 }

 if (wpa_s->dpp_listen_freq)
  wpas_dpp_listen_stop(wpa_s);
 wpa_s->dpp_listen_freq = freq;

 lwork = os_zalloc(sizeof(*lwork));
 if (!lwork)
  return -1;
 lwork->freq = freq;

 if (radio_add_work(wpa_s, freq, "dpp-listen", 0, dpp_start_listen_cb,
      lwork) < 0) {
  wpas_dpp_listen_work_free(lwork);
  return -1;
 }

 return 0;
}
