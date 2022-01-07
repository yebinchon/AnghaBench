
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_ERROR ;
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
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 char* os_strdup (char const*) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int hostapd_config_parse_key_mgmt(int line, const char *value)
{
 int val = 0, last;
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
  else {
   wpa_printf(MSG_ERROR, "Line %d: invalid key_mgmt '%s'",
       line, start);
   os_free(buf);
   return -1;
  }

  if (last)
   break;
  start = end + 1;
 }

 os_free(buf);
 if (val == 0) {
  wpa_printf(MSG_ERROR, "Line %d: no key_mgmt values "
      "configured.", line);
  return -1;
 }

 return val;
}
