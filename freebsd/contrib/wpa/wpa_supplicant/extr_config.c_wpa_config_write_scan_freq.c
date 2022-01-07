
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int scan_freq; } ;
struct parse_data {int dummy; } ;


 char* wpa_config_write_freqs (struct parse_data const*,int ) ;

__attribute__((used)) static char * wpa_config_write_scan_freq(const struct parse_data *data,
      struct wpa_ssid *ssid)
{
 return wpa_config_write_freqs(data, ssid->scan_freq);
}
