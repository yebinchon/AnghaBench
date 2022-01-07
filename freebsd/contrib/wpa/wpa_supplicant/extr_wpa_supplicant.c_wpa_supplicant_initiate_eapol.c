
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ key_mgmt; int drv_flags; int eapol; scalar_t__ current_bss; TYPE_1__* conf; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ mode; int eapol_flags; scalar_t__ mka_psk_set; int eap; int eap_workaround; } ;
struct eapol_config {int accept_802_1x_keys; int eap_disabled; int wps; int external_sim; int workaround; int fast_reauth; int required_keys; } ;
typedef int eapol_conf ;
struct TYPE_2__ {int external_sim; int fast_reauth; } ;


 int Auto ;
 int EAPOL_FLAG_REQUIRE_KEY_BROADCAST ;
 int EAPOL_FLAG_REQUIRE_KEY_UNICAST ;
 int EAPOL_LOCAL_WPS_IN_USE ;
 int EAPOL_PEER_IS_WPS20_AP ;
 int EAPOL_REQUIRE_KEY_BROADCAST ;
 int EAPOL_REQUIRE_KEY_UNICAST ;
 int FALSE ;
 int ForceAuthorized ;
 int TRUE ;
 scalar_t__ WPAS_MODE_IBSS ;
 int WPA_DRIVER_FLAGS_WIRED ;
 scalar_t__ WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 scalar_t__ WPA_KEY_MGMT_NONE ;
 scalar_t__ WPA_KEY_MGMT_WPA_NONE ;
 scalar_t__ WPA_KEY_MGMT_WPS ;
 int WPS_IE_VENDOR_TYPE ;
 int eapol_sm_notify_config (int ,int *,struct eapol_config*) ;
 int eapol_sm_notify_eap_fail (int ,int ) ;
 int eapol_sm_notify_eap_success (int ,int ) ;
 int eapol_sm_notify_portControl (int ,int ) ;
 int ieee802_1x_alloc_kay_sm (struct wpa_supplicant*,struct wpa_ssid*) ;
 int ieee802_1x_create_preshared_mka (struct wpa_supplicant*,struct wpa_ssid*) ;
 int os_memset (struct eapol_config*,int ,int) ;
 struct wpabuf* wpa_bss_get_vendor_ie_multi (scalar_t__,int ) ;
 int wpa_key_mgmt_wpa_ieee8021x (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_is_20 (struct wpabuf*) ;

void wpa_supplicant_initiate_eapol(struct wpa_supplicant *wpa_s)
{
}
