
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sched_obss_scan; int obss_scan_int; } ;
struct wpa_supplicant {TYPE_1__ sme; int current_bss; } ;
struct wpa_driver_scan_params {int low_priority; int freqs; } ;
typedef int params ;


 int MSG_DEBUG ;
 int eloop_register_timeout (int ,int ,void (*) (void*,void*),struct wpa_supplicant*,int *) ;
 int os_free (int ) ;
 int os_memset (struct wpa_driver_scan_params*,int ,int) ;
 int wpa_obss_scan_freqs_list (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_supplicant_trigger_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;

__attribute__((used)) static void sme_obss_scan_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 struct wpa_driver_scan_params params;

 if (!wpa_s->current_bss) {
  wpa_printf(MSG_DEBUG, "SME OBSS: Ignore scan request");
  return;
 }

 os_memset(&params, 0, sizeof(params));
 wpa_obss_scan_freqs_list(wpa_s, &params);
 params.low_priority = 1;
 wpa_printf(MSG_DEBUG, "SME OBSS: Request an OBSS scan");

 if (wpa_supplicant_trigger_scan(wpa_s, &params))
  wpa_printf(MSG_DEBUG, "SME OBSS: Failed to trigger scan");
 else
  wpa_s->sme.sched_obss_scan = 1;
 os_free(params.freqs);

 eloop_register_timeout(wpa_s->sme.obss_scan_int, 0,
          sme_obss_scan_timeout, wpa_s, ((void*)0));
}
