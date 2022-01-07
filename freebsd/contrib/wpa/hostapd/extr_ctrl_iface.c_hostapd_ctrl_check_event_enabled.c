
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl_dst {int events; } ;


 int RX_PROBE_REQUEST ;
 int WPA_EVENT_RX_PROBE_REQUEST ;
 scalar_t__ str_starts (char const*,int ) ;

__attribute__((used)) static int hostapd_ctrl_check_event_enabled(struct wpa_ctrl_dst *dst,
         const char *buf)
{



 if (str_starts(buf, RX_PROBE_REQUEST))
  return !!(dst->events & WPA_EVENT_RX_PROBE_REQUEST);
 return 1;
}
