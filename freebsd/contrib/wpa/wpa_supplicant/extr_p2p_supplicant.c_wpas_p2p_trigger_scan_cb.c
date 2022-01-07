
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int own_scan_requested; struct wpa_radio_work* p2p_scan_work; scalar_t__ clear_driver_scan_cache; int scan_res_handler; int scan_trigger_time; TYPE_1__* global; int curr_scan_cookie; } ;
struct wpa_radio_work {struct wpa_driver_scan_params* ctx; int started; struct wpa_supplicant* wpa_s; } ;
struct wpa_driver_scan_params {int only_new_results; int scan_cookie; } ;
struct TYPE_2__ {int p2p; } ;


 int MSG_DEBUG ;
 int os_get_reltime (int *) ;
 int p2p_notify_scan_trigger_status (int ,int) ;
 int radio_work_done (struct wpa_radio_work*) ;
 int wpa_drv_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 int wpa_printf (int ,char*) ;
 int wpa_scan_free_params (struct wpa_driver_scan_params*) ;
 int wpas_p2p_scan_res_handler ;

__attribute__((used)) static void wpas_p2p_trigger_scan_cb(struct wpa_radio_work *work, int deinit)
{
 struct wpa_supplicant *wpa_s = work->wpa_s;
 struct wpa_driver_scan_params *params = work->ctx;
 int ret;

 if (deinit) {
  if (!work->started) {
   wpa_scan_free_params(params);
   return;
  }

  wpa_s->p2p_scan_work = ((void*)0);
  return;
 }

 if (wpa_s->clear_driver_scan_cache) {
  wpa_printf(MSG_DEBUG,
      "Request driver to clear scan cache due to local BSS flush");
  params->only_new_results = 1;
 }
 ret = wpa_drv_scan(wpa_s, params);
 if (ret == 0)
  wpa_s->curr_scan_cookie = params->scan_cookie;
 wpa_scan_free_params(params);
 work->ctx = ((void*)0);
 if (ret) {
  radio_work_done(work);
  p2p_notify_scan_trigger_status(wpa_s->global->p2p, ret);
  return;
 }

 p2p_notify_scan_trigger_status(wpa_s->global->p2p, ret);
 os_get_reltime(&wpa_s->scan_trigger_time);
 wpa_s->scan_res_handler = wpas_p2p_scan_res_handler;
 wpa_s->own_scan_requested = 1;
 wpa_s->clear_driver_scan_cache = 0;
 wpa_s->p2p_scan_work = work;
}
