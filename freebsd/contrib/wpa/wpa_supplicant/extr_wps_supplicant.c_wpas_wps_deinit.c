
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpa_supplicant {TYPE_2__* wps; int * wps_er; } ;
struct TYPE_4__ {int vendor_ext_m1; } ;
struct TYPE_5__ {struct TYPE_5__* network_key; TYPE_1__ dev; int dh_privkey; int dh_pubkey; int registrar; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int os_free (TYPE_2__*) ;
 int wpabuf_free (int ) ;
 int wpas_p2p_pbc_overlap_cb ;
 int wpas_wps_assoc_with_cred_cancel (struct wpa_supplicant*) ;
 int wpas_wps_clear_ap_info (struct wpa_supplicant*) ;
 int wpas_wps_clear_timeout ;
 int wpas_wps_nfc_clear (TYPE_2__*) ;
 int wpas_wps_reenable_networks_cb ;
 int wpas_wps_timeout ;
 int wps_er_deinit (int *,int *,int *) ;
 int wps_registrar_deinit (int ) ;

void wpas_wps_deinit(struct wpa_supplicant *wpa_s)
{
 wpas_wps_assoc_with_cred_cancel(wpa_s);
 eloop_cancel_timeout(wpas_wps_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_wps_clear_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_wps_reenable_networks_cb, wpa_s, ((void*)0));
 wpas_wps_clear_ap_info(wpa_s);





 if (wpa_s->wps == ((void*)0))
  return;







 wps_registrar_deinit(wpa_s->wps->registrar);
 wpabuf_free(wpa_s->wps->dh_pubkey);
 wpabuf_free(wpa_s->wps->dh_privkey);
 wpabuf_free(wpa_s->wps->dev.vendor_ext_m1);
 os_free(wpa_s->wps->network_key);
 os_free(wpa_s->wps);
 wpa_s->wps = ((void*)0);
}
