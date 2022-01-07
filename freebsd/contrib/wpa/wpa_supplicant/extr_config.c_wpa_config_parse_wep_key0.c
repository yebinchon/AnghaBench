
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int * wep_key_len; int * wep_key; } ;
struct parse_data {int dummy; } ;


 int wpa_config_parse_wep_key (int ,int *,int,char const*,int ) ;

__attribute__((used)) static int wpa_config_parse_wep_key0(const struct parse_data *data,
         struct wpa_ssid *ssid, int line,
         const char *value)
{
 return wpa_config_parse_wep_key(ssid->wep_key[0],
     &ssid->wep_key_len[0], line,
     value, 0);
}
