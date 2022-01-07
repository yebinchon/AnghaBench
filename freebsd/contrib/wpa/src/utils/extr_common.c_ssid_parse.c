
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid_value {size_t ssid_len; int ssid; } ;


 size_t SSID_MAX_LEN ;
 int os_free (char*) ;
 int os_memcpy (int ,char*,size_t) ;
 char* os_strchr (char*,char) ;
 char* os_strdup (char const*) ;
 char* wpa_config_parse_string (char*,size_t*) ;

int ssid_parse(const char *buf, struct wpa_ssid_value *ssid)
{
 char *tmp, *res, *end;
 size_t len;

 ssid->ssid_len = 0;

 tmp = os_strdup(buf);
 if (!tmp)
  return -1;

 if (*tmp != '"') {
  end = os_strchr(tmp, ' ');
  if (end)
   *end = '\0';
 } else {
  end = os_strchr(tmp + 1, '"');
  if (!end) {
   os_free(tmp);
   return -1;
  }

  end[1] = '\0';
 }

 res = wpa_config_parse_string(tmp, &len);
 if (res && len <= SSID_MAX_LEN) {
  ssid->ssid_len = len;
  os_memcpy(ssid->ssid, res, len);
 }

 os_free(tmp);
 os_free(res);

 return ssid->ssid_len ? 0 : -1;
}
