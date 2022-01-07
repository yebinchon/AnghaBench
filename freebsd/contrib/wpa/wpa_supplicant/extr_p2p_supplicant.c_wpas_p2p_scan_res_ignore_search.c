
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; struct wpa_radio_work* p2p_scan_work; } ;
struct wpa_scan_results {int dummy; } ;
struct wpa_radio_work {int dummy; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int MSG_DEBUG ;
 int p2p_scan_res_handled (int *) ;
 int radio_work_done (struct wpa_radio_work*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpas_p2p_scan_res_ignore_search(struct wpa_supplicant *wpa_s,
         struct wpa_scan_results *scan_res)
{
 wpa_printf(MSG_DEBUG, "P2P: Ignore scan results");

 if (wpa_s->p2p_scan_work) {
  struct wpa_radio_work *work = wpa_s->p2p_scan_work;
  wpa_s->p2p_scan_work = ((void*)0);
  radio_work_done(work);
 }

 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return;





 p2p_scan_res_handled(wpa_s->global->p2p);
}
