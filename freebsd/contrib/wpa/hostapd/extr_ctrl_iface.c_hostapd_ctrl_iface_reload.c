
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int MSG_ERROR ;
 scalar_t__ hostapd_reload_iface (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_ctrl_iface_reload(struct hostapd_iface *iface)
{
 if (hostapd_reload_iface(iface) < 0) {
  wpa_printf(MSG_ERROR, "Reloading of interface failed");
  return -1;
 }
 return 0;
}
