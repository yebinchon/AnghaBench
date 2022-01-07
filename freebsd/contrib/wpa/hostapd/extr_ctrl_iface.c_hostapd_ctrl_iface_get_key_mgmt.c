
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int wpa_key_mgmt; } ;


 int WPA_ASSERT (int) ;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_IEEE8021X ;
 int WPA_KEY_MGMT_FT_IEEE8021X_SHA384 ;
 int WPA_KEY_MGMT_FT_PSK ;
 int WPA_KEY_MGMT_FT_SAE ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 int os_snprintf (char*,int,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;

__attribute__((used)) static int hostapd_ctrl_iface_get_key_mgmt(struct hostapd_data *hapd,
        char *buf, size_t buflen)
{
 int ret = 0;
 char *pos, *end;

 pos = buf;
 end = buf + buflen;

 WPA_ASSERT(hapd->conf->wpa_key_mgmt);

 if (hapd->conf->wpa_key_mgmt & WPA_KEY_MGMT_PSK) {
  ret = os_snprintf(pos, end - pos, "WPA-PSK ");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }
 if (hapd->conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X) {
  ret = os_snprintf(pos, end - pos, "WPA-EAP ");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }
 if (hapd->conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X_SUITE_B) {
  ret = os_snprintf(pos, end - pos, "WPA-EAP-SUITE-B ");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }
 if (hapd->conf->wpa_key_mgmt &
     WPA_KEY_MGMT_IEEE8021X_SUITE_B_192) {
  ret = os_snprintf(pos, end - pos,
      "WPA-EAP-SUITE-B-192 ");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }
 if (pos > buf && *(pos - 1) == ' ') {
  *(pos - 1) = '\0';
  pos--;
 }

 return pos - buf;
}
