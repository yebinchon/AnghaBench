
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int key_wrap_auth; int encr_type; int network_key_len; int network_key; int network_key_idx; int auth_type; int mac_addr; int ssid_len; int ssid; int e_snonce2; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_auth_type (int ,int) ;
 scalar_t__ wps_validate_e_snonce2 (int ,int) ;
 scalar_t__ wps_validate_encr_type (int ,int) ;
 scalar_t__ wps_validate_key_wrap_auth (int ,int) ;
 scalar_t__ wps_validate_mac_addr (int ,int) ;
 scalar_t__ wps_validate_network_key (int ,int ,int ,int) ;
 scalar_t__ wps_validate_network_key_index (int ,int ) ;
 scalar_t__ wps_validate_ssid (int ,int ,int) ;

int wps_validate_m7_encr(const struct wpabuf *tlvs, int ap, int wps2)
{
 struct wps_parse_attr attr;

 if (tlvs == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No TLVs in M7 encrypted "
      "settings");
  return -1;
 }
 if (wps_parse_msg(tlvs, &attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
      "in M7 encrypted settings");
  return -1;
 }

 if (wps_validate_e_snonce2(attr.e_snonce2, 1) ||
     wps_validate_ssid(attr.ssid, attr.ssid_len, !ap) ||
     wps_validate_mac_addr(attr.mac_addr, !ap) ||
     wps_validate_auth_type(attr.auth_type, !ap) ||
     wps_validate_encr_type(attr.encr_type, !ap) ||
     wps_validate_network_key_index(attr.network_key_idx, 0) ||
     wps_validate_network_key(attr.network_key, attr.network_key_len,
         attr.encr_type, !ap) ||
     wps_validate_key_wrap_auth(attr.key_wrap_auth, 1)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid M7 encrypted "
      "settings");




  return -1;

 }

 return 0;
}
