
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int proto; } ;
struct parse_data {int dummy; } ;


 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int WPA_PROTO_OSEN ;
 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 char* os_strdup (char const*) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int wpa_config_parse_proto(const struct parse_data *data,
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
  if (os_strcmp(start, "WPA") == 0)
   val |= WPA_PROTO_WPA;
  else if (os_strcmp(start, "RSN") == 0 ||
    os_strcmp(start, "WPA2") == 0)
   val |= WPA_PROTO_RSN;
  else if (os_strcmp(start, "OSEN") == 0)
   val |= WPA_PROTO_OSEN;
  else {
   wpa_printf(MSG_ERROR, "Line %d: invalid proto '%s'",
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
      "Line %d: no proto values configured.", line);
  errors++;
 }

 if (!errors && ssid->proto == val)
  return 1;
 wpa_printf(MSG_MSGDUMP, "proto: 0x%x", val);
 ssid->proto = val;
 return errors ? -1 : 0;
}
