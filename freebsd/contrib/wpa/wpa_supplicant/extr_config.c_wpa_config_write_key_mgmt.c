
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int key_mgmt; } ;
struct parse_data {int dummy; } ;


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
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ;
 int WPA_KEY_MGMT_NONE ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 int WPA_KEY_MGMT_WPA_NONE ;
 int WPA_KEY_MGMT_WPS ;
 int os_free (char*) ;
 int os_snprintf (char*,int,char*,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 char* os_zalloc (int) ;

__attribute__((used)) static char * wpa_config_write_key_mgmt(const struct parse_data *data,
     struct wpa_ssid *ssid)
{
 char *buf, *pos, *end;
 int ret;

 pos = buf = os_zalloc(100);
 if (buf == ((void*)0))
  return ((void*)0);
 end = buf + 100;

 if (ssid->key_mgmt & WPA_KEY_MGMT_PSK) {
  ret = os_snprintf(pos, end - pos, "%sWPA-PSK",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret)) {
   end[-1] = '\0';
   return buf;
  }
  pos += ret;
 }

 if (ssid->key_mgmt & WPA_KEY_MGMT_IEEE8021X) {
  ret = os_snprintf(pos, end - pos, "%sWPA-EAP",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret)) {
   end[-1] = '\0';
   return buf;
  }
  pos += ret;
 }

 if (ssid->key_mgmt & WPA_KEY_MGMT_IEEE8021X_NO_WPA) {
  ret = os_snprintf(pos, end - pos, "%sIEEE8021X",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret)) {
   end[-1] = '\0';
   return buf;
  }
  pos += ret;
 }

 if (ssid->key_mgmt & WPA_KEY_MGMT_NONE) {
  ret = os_snprintf(pos, end - pos, "%sNONE",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret)) {
   end[-1] = '\0';
   return buf;
  }
  pos += ret;
 }

 if (ssid->key_mgmt & WPA_KEY_MGMT_WPA_NONE) {
  ret = os_snprintf(pos, end - pos, "%sWPA-NONE",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret)) {
   end[-1] = '\0';
   return buf;
  }
  pos += ret;
 }
 if (pos == buf) {
  os_free(buf);
  buf = ((void*)0);
 }

 return buf;
}
