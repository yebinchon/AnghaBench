
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int num_bssid_whitelist; int bssid_whitelist; } ;
struct parse_data {int dummy; } ;


 char* wpa_config_write_addr_list (struct parse_data const*,int ,int ,char*) ;

__attribute__((used)) static char * wpa_config_write_bssid_whitelist(const struct parse_data *data,
            struct wpa_ssid *ssid)
{
 return wpa_config_write_addr_list(data, ssid->bssid_whitelist,
       ssid->num_bssid_whitelist,
       "bssid_whitelist");
}
