
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_ie_data {int key_mgmt; int capabilities; int pairwise_cipher; } ;


 int WPA_CAPABILITY_PREAUTH ;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_IEEE8021X ;
 int WPA_KEY_MGMT_FT_PSK ;
 int WPA_KEY_MGMT_FT_SAE ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 int WPA_KEY_MGMT_WPA_NONE ;
 int os_snprintf (char*,int,char*,...) ;
 scalar_t__ os_snprintf_error (int,int) ;
 scalar_t__ wpa_parse_wpa_ie (int const*,size_t,struct wpa_ie_data*) ;
 char* wpa_supplicant_cipher_txt (char*,char*,int ) ;

__attribute__((used)) static char * wpa_supplicant_ie_txt(char *pos, char *end, const char *proto,
        const u8 *ie, size_t ie_len)
{
 struct wpa_ie_data data;
 char *start;
 int ret;

 ret = os_snprintf(pos, end - pos, "[%s-", proto);
 if (os_snprintf_error(end - pos, ret))
  return pos;
 pos += ret;

 if (wpa_parse_wpa_ie(ie, ie_len, &data) < 0) {
  ret = os_snprintf(pos, end - pos, "?]");
  if (os_snprintf_error(end - pos, ret))
   return pos;
  pos += ret;
  return pos;
 }

 start = pos;
 if (data.key_mgmt & WPA_KEY_MGMT_IEEE8021X) {
  ret = os_snprintf(pos, end - pos, "%sEAP",
      pos == start ? "" : "+");
  if (os_snprintf_error(end - pos, ret))
   return pos;
  pos += ret;
 }
 if (data.key_mgmt & WPA_KEY_MGMT_PSK) {
  ret = os_snprintf(pos, end - pos, "%sPSK",
      pos == start ? "" : "+");
  if (os_snprintf_error(end - pos, ret))
   return pos;
  pos += ret;
 }
 if (data.key_mgmt & WPA_KEY_MGMT_WPA_NONE) {
  ret = os_snprintf(pos, end - pos, "%sNone",
      pos == start ? "" : "+");
  if (os_snprintf_error(end - pos, ret))
   return pos;
  pos += ret;
 }
 if (data.key_mgmt & WPA_KEY_MGMT_SAE) {
  ret = os_snprintf(pos, end - pos, "%sSAE",
      pos == start ? "" : "+");
  if (os_snprintf_error(end - pos, ret))
   return pos;
  pos += ret;
 }
 if (data.key_mgmt & WPA_KEY_MGMT_OSEN) {
  ret = os_snprintf(pos, end - pos, "%sOSEN",
      pos == start ? "" : "+");
  if (os_snprintf_error(end - pos, ret))
   return pos;
  pos += ret;
 }

 pos = wpa_supplicant_cipher_txt(pos, end, data.pairwise_cipher);

 if (data.capabilities & WPA_CAPABILITY_PREAUTH) {
  ret = os_snprintf(pos, end - pos, "-preauth");
  if (os_snprintf_error(end - pos, ret))
   return pos;
  pos += ret;
 }

 ret = os_snprintf(pos, end - pos, "]");
 if (os_snprintf_error(end - pos, ret))
  return pos;
 pos += ret;

 return pos;
}
