
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int group_cipher; } ;
struct parse_data {int dummy; } ;


 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int WPA_ALLOWED_GROUP_CIPHERS ;
 int WPA_CIPHER_WEP104 ;
 int WPA_CIPHER_WEP40 ;
 int wpa_config_parse_cipher (int,char const*) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int wpa_config_parse_group(const struct parse_data *data,
      struct wpa_ssid *ssid, int line,
      const char *value)
{
 int val;
 val = wpa_config_parse_cipher(line, value);
 if (val == -1)
  return -1;





 val &= ~(WPA_CIPHER_WEP104 | WPA_CIPHER_WEP40);

 if (val & ~WPA_ALLOWED_GROUP_CIPHERS) {
  wpa_printf(MSG_ERROR, "Line %d: not allowed group cipher "
      "(0x%x).", line, val);
  return -1;
 }

 if (ssid->group_cipher == val)
  return 1;
 wpa_printf(MSG_MSGDUMP, "group: 0x%x", val);
 ssid->group_cipher = val;
 return 0;
}
