
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_capa {int key_mgmt; } ;


 int WPA_DRIVER_CAPA_KEY_MGMT_DPP ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA384 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FT_PSK ;
 int WPA_DRIVER_CAPA_KEY_MGMT_OWE ;
 int WPA_DRIVER_CAPA_KEY_MGMT_SAE ;
 int WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B ;
 int WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B_192 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK ;
 int os_snprintf (char*,int,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 size_t os_strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int ctrl_iface_get_capability_key_mgmt(int res, char *strict,
           struct wpa_driver_capa *capa,
           char *buf, size_t buflen)
{
 int ret;
 char *pos, *end;
 size_t len;

 pos = buf;
 end = pos + buflen;

 if (res < 0) {
  if (strict)
   return 0;
  len = os_strlcpy(buf, "WPA-PSK WPA-EAP IEEE8021X WPA-NONE "
     "NONE", buflen);
  if (len >= buflen)
   return -1;
  return len;
 }

 ret = os_snprintf(pos, end - pos, "NONE IEEE8021X");
 if (os_snprintf_error(end - pos, ret))
  return pos - buf;
 pos += ret;

 if (capa->key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA |
         WPA_DRIVER_CAPA_KEY_MGMT_WPA2)) {
  ret = os_snprintf(pos, end - pos, " WPA-EAP");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }

 if (capa->key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK |
         WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK)) {
  ret = os_snprintf(pos, end - pos, " WPA-PSK");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }

 if (capa->key_mgmt & WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE) {
  ret = os_snprintf(pos, end - pos, " WPA-NONE");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }
 return pos - buf;
}
