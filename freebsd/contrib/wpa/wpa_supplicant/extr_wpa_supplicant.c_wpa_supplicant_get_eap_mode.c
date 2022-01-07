
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ key_mgmt; int eapol; } ;


 scalar_t__ WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 char* eapol_sm_get_method_name (int ) ;
 scalar_t__ wpa_key_mgmt_wpa_ieee8021x (scalar_t__) ;

const char * wpa_supplicant_get_eap_mode(struct wpa_supplicant *wpa_s)
{
 const char *eapol_method;

        if (wpa_key_mgmt_wpa_ieee8021x(wpa_s->key_mgmt) == 0 &&
            wpa_s->key_mgmt != WPA_KEY_MGMT_IEEE8021X_NO_WPA) {
  return "NO-EAP";
 }

 eapol_method = eapol_sm_get_method_name(wpa_s->eapol);
 if (eapol_method == ((void*)0))
  return "UNKNOWN-EAP";

 return eapol_method;
}
