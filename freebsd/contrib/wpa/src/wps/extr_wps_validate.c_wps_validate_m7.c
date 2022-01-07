
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int authenticator; int * version2; int settings_delay_time; int encr_settings_len; int encr_settings; int registrar_nonce; int msg_type; int version; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_authenticator (int ,int) ;
 scalar_t__ wps_validate_encr_settings (int ,int ,int) ;
 scalar_t__ wps_validate_msg_type (int ,int) ;
 scalar_t__ wps_validate_registrar_nonce (int ,int) ;
 scalar_t__ wps_validate_settings_delay_time (int ,int ) ;
 scalar_t__ wps_validate_version (int ,int) ;
 scalar_t__ wps_validate_version2 (int *,int) ;

int wps_validate_m7(const struct wpabuf *tlvs)
{
 struct wps_parse_attr attr;
 int wps2;

 if (tlvs == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No TLVs in M7");
  return -1;
 }
 if (wps_parse_msg(tlvs, &attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
      "in M7");
  return -1;
 }

 wps2 = attr.version2 != ((void*)0);
 if (wps_validate_version(attr.version, 1) ||
     wps_validate_msg_type(attr.msg_type, 1) ||
     wps_validate_registrar_nonce(attr.registrar_nonce, 1) ||
     wps_validate_encr_settings(attr.encr_settings,
           attr.encr_settings_len, 1) ||
     wps_validate_settings_delay_time(attr.settings_delay_time, 0) ||
     wps_validate_version2(attr.version2, wps2) ||
     wps_validate_authenticator(attr.authenticator, 1)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid M7");




  return -1;

 }

 return 0;
}
