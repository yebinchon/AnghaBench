
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int bssid; int bssid_set; } ;
struct parse_data {int dummy; } ;


 int MAC2STR (int ) ;
 int MACSTR ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 int os_snprintf (char*,int,int ,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;

__attribute__((used)) static char * wpa_config_write_bssid(const struct parse_data *data,
         struct wpa_ssid *ssid)
{
 char *value;
 int res;

 if (!ssid->bssid_set)
  return ((void*)0);

 value = os_malloc(20);
 if (value == ((void*)0))
  return ((void*)0);
 res = os_snprintf(value, 20, MACSTR, MAC2STR(ssid->bssid));
 if (os_snprintf_error(20, res)) {
  os_free(value);
  return ((void*)0);
 }
 value[20 - 1] = '\0';
 return value;
}
