
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl_dst {int events; } ;


 int WPA_EVENT_RX_PROBE_REQUEST ;
 int atoi (char const*) ;
 char* os_strchr (char const*,char) ;
 scalar_t__ str_starts (char const*,char*) ;

__attribute__((used)) static int ctrl_set_events(struct wpa_ctrl_dst *dst, const char *input)
{
 const char *value;
 int val;

 if (!input)
  return 0;

 value = os_strchr(input, '=');
 if (!value)
  return -1;
 value++;
 val = atoi(value);
 if (val < 0 || val > 1)
  return -1;

 if (str_starts(input, "probe_rx_events=")) {
  if (val)
   dst->events |= WPA_EVENT_RX_PROBE_REQUEST;
  else
   dst->events &= ~WPA_EVENT_RX_PROBE_REQUEST;
 }

 return 0;
}
