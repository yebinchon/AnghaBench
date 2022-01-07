
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int bssid_set; int bssid; } ;
struct parse_data {int dummy; } ;


 int ETH_ALEN ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 scalar_t__ hwaddr_aton (char const*,int ) ;
 scalar_t__ os_strcmp (char const*,char*) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpa_config_parse_bssid(const struct parse_data *data,
      struct wpa_ssid *ssid, int line,
      const char *value)
{
 if (value[0] == '\0' || os_strcmp(value, "\"\"") == 0 ||
     os_strcmp(value, "any") == 0) {
  ssid->bssid_set = 0;
  wpa_printf(MSG_MSGDUMP, "BSSID any");
  return 0;
 }
 if (hwaddr_aton(value, ssid->bssid)) {
  wpa_printf(MSG_ERROR, "Line %d: Invalid BSSID '%s'.",
      line, value);
  return -1;
 }
 ssid->bssid_set = 1;
 wpa_hexdump(MSG_MSGDUMP, "BSSID", ssid->bssid, ETH_ALEN);
 return 0;
}
