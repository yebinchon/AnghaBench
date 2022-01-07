
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
struct parse_data {int dummy; } ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpa_config_parse_peerkey(const struct parse_data *data,
        struct wpa_ssid *ssid, int line,
        const char *value)
{
 wpa_printf(MSG_INFO, "NOTE: Obsolete peerkey parameter ignored");
 return 0;
}
