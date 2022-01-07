
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int key_wrap_auth; int e_snonce1; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_e_snonce1 (int ,int) ;
 scalar_t__ wps_validate_key_wrap_auth (int ,int) ;

int wps_validate_m5_encr(const struct wpabuf *tlvs, int wps2)
{
 struct wps_parse_attr attr;

 if (tlvs == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No TLVs in M5 encrypted "
      "settings");
  return -1;
 }
 if (wps_parse_msg(tlvs, &attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
      "in M5 encrypted settings");
  return -1;
 }

 if (wps_validate_e_snonce1(attr.e_snonce1, 1) ||
     wps_validate_key_wrap_auth(attr.key_wrap_auth, 1)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid M5 encrypted "
      "settings");




  return -1;

 }

 return 0;
}
