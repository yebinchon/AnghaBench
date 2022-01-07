
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relative_adjust_rssi; int relative_adjust_band; } ;
struct wpa_supplicant {TYPE_1__ srp; } ;


 int WPA_SETBAND_2G ;
 int WPA_SETBAND_5G ;
 int atoi (char*) ;
 char* os_strchr (char const*,char) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;

__attribute__((used)) static int wpas_ctrl_set_relative_band_adjust(struct wpa_supplicant *wpa_s,
           const char *cmd)
{
 char *pos;
 int adjust_rssi;


 pos = os_strchr(cmd, ':');
 if (!pos)
  return -1;
 pos++;
 adjust_rssi = atoi(pos);
 if (adjust_rssi < -100 || adjust_rssi > 100)
  return -1;

 if (os_strncmp(cmd, "2G", 2) == 0)
  wpa_s->srp.relative_adjust_band = WPA_SETBAND_2G;
 else if (os_strncmp(cmd, "5G", 2) == 0)
  wpa_s->srp.relative_adjust_band = WPA_SETBAND_5G;
 else
  return -1;

 wpa_s->srp.relative_adjust_rssi = adjust_rssi;

 return 0;
}
