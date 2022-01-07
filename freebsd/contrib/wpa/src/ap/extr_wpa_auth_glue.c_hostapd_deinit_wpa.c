
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int * l2; TYPE_1__* conf; scalar_t__ drv_priv; int * wpa_auth; } ;
struct TYPE_2__ {int iface; } ;


 int ELOOP_ALL_CTX ;
 int MSG_DEBUG ;
 int eloop_cancel_timeout (int (*) (struct hostapd_data*,int *),struct hostapd_data*,int ) ;
 int hostapd_oui_deliver_later (struct hostapd_data*,int *) ;
 scalar_t__ hostapd_set_generic_elem (struct hostapd_data*,int *,int ) ;
 scalar_t__ hostapd_set_privacy (struct hostapd_data*,int ) ;
 int hostapd_wpa_ft_rrb_rx_later (struct hostapd_data*,int *) ;
 int hostapd_wpa_unregister_ft_oui (struct hostapd_data*) ;
 int ieee80211_tkip_countermeasures_deinit (struct hostapd_data*) ;
 int ieee802_1x_deinit (struct hostapd_data*) ;
 int l2_packet_deinit (int *) ;
 int rsn_preauth_iface_deinit (struct hostapd_data*) ;
 int wpa_deinit (int *) ;
 int wpa_printf (int ,char*,int ) ;

void hostapd_deinit_wpa(struct hostapd_data *hapd)
{
 ieee80211_tkip_countermeasures_deinit(hapd);
 rsn_preauth_iface_deinit(hapd);
 if (hapd->wpa_auth) {
  wpa_deinit(hapd->wpa_auth);
  hapd->wpa_auth = ((void*)0);

  if (hapd->drv_priv && hostapd_set_privacy(hapd, 0)) {
   wpa_printf(MSG_DEBUG, "Could not disable "
       "PrivacyInvoked for interface %s",
       hapd->conf->iface);
  }

  if (hapd->drv_priv &&
      hostapd_set_generic_elem(hapd, (u8 *) "", 0)) {
   wpa_printf(MSG_DEBUG, "Could not remove generic "
       "information element from interface %s",
       hapd->conf->iface);
  }
 }
 ieee802_1x_deinit(hapd);
}
