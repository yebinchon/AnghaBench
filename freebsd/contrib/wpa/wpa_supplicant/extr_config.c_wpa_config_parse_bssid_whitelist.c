
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int num_bssid_whitelist; int bssid_whitelist; } ;
struct parse_data {int dummy; } ;


 int wpa_config_parse_addr_list (struct parse_data const*,int,char const*,int *,int *,char*,int,int) ;

__attribute__((used)) static int wpa_config_parse_bssid_whitelist(const struct parse_data *data,
         struct wpa_ssid *ssid, int line,
         const char *value)
{
 return wpa_config_parse_addr_list(data, line, value,
       &ssid->bssid_whitelist,
       &ssid->num_bssid_whitelist,
       "bssid_whitelist", 1, 1);
}
