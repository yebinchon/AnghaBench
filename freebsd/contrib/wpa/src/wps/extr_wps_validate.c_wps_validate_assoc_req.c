
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int * version2; int request_type; int version; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_request_type (int ,int) ;
 scalar_t__ wps_validate_version (int ,int) ;
 scalar_t__ wps_validate_version2 (int *,int) ;

int wps_validate_assoc_req(const struct wpabuf *wps_ie)
{
 struct wps_parse_attr attr;
 int wps2;

 if (wps_ie == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No WPS IE in "
      "(Re)Association Request frame");
  return -1;
 }
 if (wps_parse_msg(wps_ie, &attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse WPS IE in "
      "(Re)Association Request frame");
  return -1;
 }

 wps2 = attr.version2 != ((void*)0);
 if (wps_validate_version(attr.version, 1) ||
     wps_validate_request_type(attr.request_type, 1) ||
     wps_validate_version2(attr.version2, wps2)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid (Re)Association "
      "Request frame");
  return -1;
 }

 return 0;
}
