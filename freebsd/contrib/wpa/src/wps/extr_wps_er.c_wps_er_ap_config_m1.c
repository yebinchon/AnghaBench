
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_er_ap {TYPE_2__* wps; int ap_settings; TYPE_1__* er; } ;
struct wps_config {int registrar; int new_ap_settings; int wps; } ;
struct wpabuf {int dummy; } ;
typedef int cfg ;
struct TYPE_4__ {int * ap_settings_cb_ctx; int * ap_settings_cb; } ;
struct TYPE_3__ {int wps; } ;


 int MSG_DEBUG ;
 int os_memset (struct wps_config*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wps_er_ap_process (struct wps_er_ap*,struct wpabuf*) ;
 TYPE_2__* wps_init (struct wps_config*) ;

__attribute__((used)) static void wps_er_ap_config_m1(struct wps_er_ap *ap, struct wpabuf *m1)
{
 struct wps_config cfg;

 if (ap->wps) {
  wpa_printf(MSG_DEBUG, "WPS ER: Protocol run already in "
      "progress with this AP");
  return;
 }

 os_memset(&cfg, 0, sizeof(cfg));
 cfg.wps = ap->er->wps;
 cfg.registrar = 1;
 cfg.new_ap_settings = ap->ap_settings;
 ap->wps = wps_init(&cfg);
 if (ap->wps == ((void*)0))
  return;
 ap->wps->ap_settings_cb = ((void*)0);
 ap->wps->ap_settings_cb_ctx = ((void*)0);

 wps_er_ap_process(ap, m1);
}
