
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; struct eapol_authenticator* eapol_auth; } ;
struct eapol_authenticator {int * default_wep_key; } ;
struct TYPE_2__ {int default_wep_key_len; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 scalar_t__ random_get_bytes (int *,int) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ieee802_1x_rekey_broadcast(struct hostapd_data *hapd)
{
 struct eapol_authenticator *eapol = hapd->eapol_auth;

 if (hapd->conf->default_wep_key_len < 1)
  return 0;

 os_free(eapol->default_wep_key);
 eapol->default_wep_key = os_malloc(hapd->conf->default_wep_key_len);
 if (eapol->default_wep_key == ((void*)0) ||
     random_get_bytes(eapol->default_wep_key,
        hapd->conf->default_wep_key_len)) {
  wpa_printf(MSG_INFO, "Could not generate random WEP key");
  os_free(eapol->default_wep_key);
  eapol->default_wep_key = ((void*)0);
  return -1;
 }

 wpa_hexdump_key(MSG_DEBUG, "IEEE 802.1X: New default WEP key",
   eapol->default_wep_key,
   hapd->conf->default_wep_key_len);

 return 0;
}
