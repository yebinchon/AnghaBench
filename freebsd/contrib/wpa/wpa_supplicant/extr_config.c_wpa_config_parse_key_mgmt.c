
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int key_mgmt; } ;
struct parse_data {int dummy; } ;


 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_IEEE8021X ;
 int WPA_KEY_MGMT_FT_IEEE8021X_SHA384 ;
 int WPA_KEY_MGMT_FT_PSK ;
 int WPA_KEY_MGMT_FT_SAE ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ;
 int WPA_KEY_MGMT_NONE ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 int WPA_KEY_MGMT_WPA_NONE ;
 int WPA_KEY_MGMT_WPS ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 char* os_strdup (char const*) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int wpa_config_parse_key_mgmt(const struct parse_data *data,
         struct wpa_ssid *ssid, int line,
         const char *value)
{
 int val = 0, last, errors = 0;
 char *start, *end, *buf;

 buf = os_strdup(value);
 if (buf == ((void*)0))
  return -1;
 start = buf;

 while (*start != '\0') {
  while (*start == ' ' || *start == '\t')
   start++;
  if (*start == '\0')
   break;
  end = start;
  while (*end != ' ' && *end != '\t' && *end != '\0')
   end++;
  last = *end == '\0';
  *end = '\0';
  if (os_strcmp(start, "WPA-PSK") == 0)
   val |= WPA_KEY_MGMT_PSK;
  else if (os_strcmp(start, "WPA-EAP") == 0)
   val |= WPA_KEY_MGMT_IEEE8021X;
  else if (os_strcmp(start, "IEEE8021X") == 0)
   val |= WPA_KEY_MGMT_IEEE8021X_NO_WPA;
  else if (os_strcmp(start, "NONE") == 0)
   val |= WPA_KEY_MGMT_NONE;
  else if (os_strcmp(start, "WPA-NONE") == 0)
   val |= WPA_KEY_MGMT_WPA_NONE;
  else {
   wpa_printf(MSG_ERROR, "Line %d: invalid key_mgmt '%s'",
       line, start);
   errors++;
  }

  if (last)
   break;
  start = end + 1;
 }
 os_free(buf);

 if (val == 0) {
  wpa_printf(MSG_ERROR,
      "Line %d: no key_mgmt values configured.", line);
  errors++;
 }

 if (!errors && ssid->key_mgmt == val)
  return 1;
 wpa_printf(MSG_MSGDUMP, "key_mgmt: 0x%x", val);
 ssid->key_mgmt = val;
 return errors ? -1 : 0;
}
