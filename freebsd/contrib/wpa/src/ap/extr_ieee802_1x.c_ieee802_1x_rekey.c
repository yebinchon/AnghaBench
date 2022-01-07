
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; struct eapol_authenticator* eapol_auth; } ;
struct eapol_authenticator {int default_wep_key_idx; int * default_wep_key; } ;
struct TYPE_2__ {scalar_t__ individual_wep_key_len; scalar_t__ wep_rekeying_period; int default_wep_key_len; int iface; } ;


 int HOSTAPD_LEVEL_WARNING ;
 int HOSTAPD_MODULE_IEEE8021X ;
 int MSG_DEBUG ;
 int WPA_ALG_WEP ;
 int ap_for_each_sta (struct hostapd_data*,int ,int *) ;
 int broadcast_ether_addr ;
 int eloop_register_timeout (scalar_t__,int ,void (*) (void*,void*),struct hostapd_data*,int *) ;
 scalar_t__ hostapd_drv_set_key (int ,struct hostapd_data*,int ,int ,int,int,int *,int ,int *,int ) ;
 int hostapd_logger (struct hostapd_data*,int *,int ,int ,char*) ;
 scalar_t__ ieee802_1x_rekey_broadcast (struct hostapd_data*) ;
 int ieee802_1x_sta_key_available ;
 int os_free (int *) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void ieee802_1x_rekey(void *eloop_ctx, void *timeout_ctx)
{
 struct hostapd_data *hapd = eloop_ctx;
 struct eapol_authenticator *eapol = hapd->eapol_auth;

 if (eapol->default_wep_key_idx >= 3)
  eapol->default_wep_key_idx =
   hapd->conf->individual_wep_key_len > 0 ? 1 : 0;
 else
  eapol->default_wep_key_idx++;

 wpa_printf(MSG_DEBUG, "IEEE 802.1X: New default WEP key index %d",
     eapol->default_wep_key_idx);

 if (ieee802_1x_rekey_broadcast(hapd)) {
  hostapd_logger(hapd, ((void*)0), HOSTAPD_MODULE_IEEE8021X,
          HOSTAPD_LEVEL_WARNING, "failed to generate a "
          "new broadcast key");
  os_free(eapol->default_wep_key);
  eapol->default_wep_key = ((void*)0);
  return;
 }



 if (hostapd_drv_set_key(hapd->conf->iface, hapd, WPA_ALG_WEP,
    broadcast_ether_addr,
    eapol->default_wep_key_idx, 1, ((void*)0), 0,
    eapol->default_wep_key,
    hapd->conf->default_wep_key_len)) {
  hostapd_logger(hapd, ((void*)0), HOSTAPD_MODULE_IEEE8021X,
          HOSTAPD_LEVEL_WARNING, "failed to configure a "
          "new broadcast key");
  os_free(eapol->default_wep_key);
  eapol->default_wep_key = ((void*)0);
  return;
 }

 ap_for_each_sta(hapd, ieee802_1x_sta_key_available, ((void*)0));

 if (hapd->conf->wep_rekeying_period > 0) {
  eloop_register_timeout(hapd->conf->wep_rekeying_period, 0,
           ieee802_1x_rekey, hapd, ((void*)0));
 }
}
