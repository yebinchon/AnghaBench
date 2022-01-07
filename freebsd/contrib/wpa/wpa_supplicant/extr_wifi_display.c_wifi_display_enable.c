
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int wifi_display; } ;


 int MSG_DEBUG ;
 int wifi_display_update_wfd_ie (struct wpa_global*) ;
 int wpa_printf (int ,char*,char*) ;

void wifi_display_enable(struct wpa_global *global, int enabled)
{
 wpa_printf(MSG_DEBUG, "WFD: Wi-Fi Display %s",
     enabled ? "enabled" : "disabled");
 global->wifi_display = enabled;
 wifi_display_update_wfd_ie(global);
}
