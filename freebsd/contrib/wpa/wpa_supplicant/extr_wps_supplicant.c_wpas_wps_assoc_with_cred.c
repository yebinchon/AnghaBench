
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_fast_associate (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

__attribute__((used)) static void wpas_wps_assoc_with_cred(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 int use_fast_assoc = timeout_ctx != ((void*)0);

 wpa_printf(MSG_DEBUG, "WPS: Continuing association after eapol_cb");
 if (!use_fast_assoc ||
     wpa_supplicant_fast_associate(wpa_s) != 1)
  wpa_supplicant_req_scan(wpa_s, 0, 0);
}
