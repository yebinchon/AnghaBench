
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int group_cipher; } ;
struct parse_data {int dummy; } ;


 char* wpa_config_write_cipher (int ) ;

__attribute__((used)) static char * wpa_config_write_group(const struct parse_data *data,
         struct wpa_ssid *ssid)
{
 return wpa_config_write_cipher(ssid->group_cipher);
}
