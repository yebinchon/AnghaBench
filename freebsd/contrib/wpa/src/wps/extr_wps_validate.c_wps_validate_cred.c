
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_parse_attr {int network_key_shareable; int mac_addr; int encr_type; int network_key_len; int network_key; int network_key_idx; int auth_type; int ssid_len; int ssid; int network_idx; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 int wpabuf_set (struct wpabuf*,int const*,size_t) ;
 scalar_t__ wps_parse_msg (struct wpabuf*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_auth_type (int ,int) ;
 scalar_t__ wps_validate_encr_type (int ,int) ;
 scalar_t__ wps_validate_mac_addr (int ,int) ;
 scalar_t__ wps_validate_network_idx (int ,int) ;
 scalar_t__ wps_validate_network_key (int ,int ,int ,int) ;
 scalar_t__ wps_validate_network_key_index (int ,int ) ;
 scalar_t__ wps_validate_network_key_shareable (int ,int ) ;
 scalar_t__ wps_validate_ssid (int ,int ,int) ;

__attribute__((used)) static int wps_validate_cred(const u8 *cred, size_t len)
{
 struct wps_parse_attr attr;
 struct wpabuf buf;

 if (cred == ((void*)0))
  return -1;
 wpabuf_set(&buf, cred, len);
 if (wps_parse_msg(&buf, &attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse Credential");
  return -1;
 }

 if (wps_validate_network_idx(attr.network_idx, 1) ||
     wps_validate_ssid(attr.ssid, attr.ssid_len, 1) ||
     wps_validate_auth_type(attr.auth_type, 1) ||
     wps_validate_encr_type(attr.encr_type, 1) ||
     wps_validate_network_key_index(attr.network_key_idx, 0) ||
     wps_validate_network_key(attr.network_key, attr.network_key_len,
         attr.encr_type, 1) ||
     wps_validate_mac_addr(attr.mac_addr, 1) ||
     wps_validate_network_key_shareable(attr.network_key_shareable, 0))
 {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Credential");
  return -1;
 }


 return 0;
}
