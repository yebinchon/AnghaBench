
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int MSG_WARNING ;
 scalar_t__ hostapd_reload_config (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int handle_reload_iface(struct hostapd_iface *iface, void *ctx)
{
 if (hostapd_reload_config(iface) < 0) {
  wpa_printf(MSG_WARNING, "Failed to read new configuration "
      "file - continuing with old.");
 }
 return 0;
}
