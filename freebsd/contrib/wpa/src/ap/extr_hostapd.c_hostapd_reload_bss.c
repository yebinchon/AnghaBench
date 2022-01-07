
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const u8 ;
struct hostapd_ssid {int ssid_len; int ssid; scalar_t__ ssid_set; TYPE_3__* wpa_psk; scalar_t__ wpa_passphrase; scalar_t__ wpa_passphrase_set; int wpa_psk_set; } ;
struct hostapd_data {TYPE_2__* conf; int * wpa_auth; int radius; TYPE_1__* iconf; int started; } ;
struct TYPE_6__ {int next; } ;
struct TYPE_5__ {scalar_t__ wmm_enabled; int iface; struct hostapd_ssid ssid; scalar_t__ wpa; scalar_t__ osen; scalar_t__ ieee802_1x; int radius; } ;
struct TYPE_4__ {scalar_t__ ieee80211n; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int hostapd_config_clear_wpa_psk (TYPE_3__**) ;
 int hostapd_reconfig_wpa (struct hostapd_data*) ;
 int hostapd_set_drv_ieee8021x (struct hostapd_data*,int ,int) ;
 scalar_t__ hostapd_set_generic_elem (struct hostapd_data*,int const*,size_t) ;
 int hostapd_set_privacy (struct hostapd_data*,int ) ;
 scalar_t__ hostapd_set_ssid (struct hostapd_data*,int ,int ) ;
 int hostapd_setup_encryption (int ,struct hostapd_data*) ;
 int hostapd_setup_wpa (struct hostapd_data*) ;
 scalar_t__ hostapd_setup_wpa_psk (TYPE_2__*) ;
 int hostapd_update_wps (struct hostapd_data*) ;
 int ieee802_11_set_beacon (struct hostapd_data*) ;
 int radius_client_reconfig (int ,int ) ;
 int const* wpa_auth_get_wpa_ie (int *,size_t*) ;
 int wpa_deinit (int *) ;
 int wpa_init_keys (int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void hostapd_reload_bss(struct hostapd_data *hapd)
{
 struct hostapd_ssid *ssid;

 if (!hapd->started)
  return;

 if (hapd->conf->wmm_enabled < 0)
  hapd->conf->wmm_enabled = hapd->iconf->ieee80211n;


 radius_client_reconfig(hapd->radius, hapd->conf->radius);


 ssid = &hapd->conf->ssid;
 if (!ssid->wpa_psk_set && ssid->wpa_psk && !ssid->wpa_psk->next &&
     ssid->wpa_passphrase_set && ssid->wpa_passphrase) {




  hostapd_config_clear_wpa_psk(&hapd->conf->ssid.wpa_psk);
 }
 if (hostapd_setup_wpa_psk(hapd->conf)) {
  wpa_printf(MSG_ERROR, "Failed to re-configure WPA PSK "
      "after reloading configuration");
 }

 if (hapd->conf->ieee802_1x || hapd->conf->wpa)
  hostapd_set_drv_ieee8021x(hapd, hapd->conf->iface, 1);
 else
  hostapd_set_drv_ieee8021x(hapd, hapd->conf->iface, 0);

 if ((hapd->conf->wpa || hapd->conf->osen) && hapd->wpa_auth == ((void*)0)) {
  hostapd_setup_wpa(hapd);
  if (hapd->wpa_auth)
   wpa_init_keys(hapd->wpa_auth);
 } else if (hapd->conf->wpa) {
  const u8 *wpa_ie;
  size_t wpa_ie_len;
  hostapd_reconfig_wpa(hapd);
  wpa_ie = wpa_auth_get_wpa_ie(hapd->wpa_auth, &wpa_ie_len);
  if (hostapd_set_generic_elem(hapd, wpa_ie, wpa_ie_len))
   wpa_printf(MSG_ERROR, "Failed to configure WPA IE for "
       "the kernel driver.");
 } else if (hapd->wpa_auth) {
  wpa_deinit(hapd->wpa_auth);
  hapd->wpa_auth = ((void*)0);
  hostapd_set_privacy(hapd, 0);
  hostapd_setup_encryption(hapd->conf->iface, hapd);
  hostapd_set_generic_elem(hapd, (u8 *) "", 0);
 }

 ieee802_11_set_beacon(hapd);
 hostapd_update_wps(hapd);

 if (hapd->conf->ssid.ssid_set &&
     hostapd_set_ssid(hapd, hapd->conf->ssid.ssid,
        hapd->conf->ssid.ssid_len)) {
  wpa_printf(MSG_ERROR, "Could not set SSID for kernel driver");

 }
 wpa_printf(MSG_DEBUG, "Reconfigured interface %s", hapd->conf->iface);
}
