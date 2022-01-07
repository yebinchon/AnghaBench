
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wps_credential {size_t ssid_len; int ssid; } ;


 int MSG_DEBUG ;
 int os_memcpy (int ,scalar_t__ const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_cred_ssid(struct wps_credential *cred, const u8 *ssid,
     size_t ssid_len)
{
 if (ssid == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Credential did not include SSID");
  return -1;
 }



 while (ssid_len > 0 && ssid[ssid_len - 1] == 0)
  ssid_len--;

 wpa_hexdump_ascii(MSG_DEBUG, "WPS: SSID", ssid, ssid_len);
 if (ssid_len <= sizeof(cred->ssid)) {
  os_memcpy(cred->ssid, ssid, ssid_len);
  cred->ssid_len = ssid_len;
 }

 return 0;
}
