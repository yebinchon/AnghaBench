
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* interfaces; } ;
struct TYPE_2__ {scalar_t__ (* reload_config ) (struct hostapd_iface*) ;} ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 scalar_t__ stub1 (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wps_reload_config(void *eloop_data, void *user_ctx)
{
 struct hostapd_iface *iface = eloop_data;

 wpa_printf(MSG_DEBUG, "WPS: Reload configuration data");
 if (iface->interfaces == ((void*)0) ||
     iface->interfaces->reload_config(iface) < 0) {
  wpa_printf(MSG_WARNING, "WPS: Failed to reload the updated "
      "configuration");
 }
}
