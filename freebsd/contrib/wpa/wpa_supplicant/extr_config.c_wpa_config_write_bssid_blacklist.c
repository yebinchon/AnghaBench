
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int num_bssid_blacklist; int bssid_blacklist; } ;
struct parse_data {int dummy; } ;


 char* wpa_config_write_addr_list (struct parse_data const*,int ,int ,char*) ;

__attribute__((used)) static char * wpa_config_write_bssid_blacklist(const struct parse_data *data,
            struct wpa_ssid *ssid)
{
 return wpa_config_write_addr_list(data, ssid->bssid_blacklist,
       ssid->num_bssid_blacklist,
       "bssid_blacklist");
}
