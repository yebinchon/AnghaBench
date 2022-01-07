
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int id; } ;


 int MSG_DEBUG ;
 int os_snprintf (char*,size_t,char*,int ) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 int wpa_printf (int ,char*) ;
 struct wpa_ssid* wpa_supplicant_add_network (struct wpa_supplicant*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_add_network(
 struct wpa_supplicant *wpa_s, char *buf, size_t buflen)
{
 struct wpa_ssid *ssid;
 int ret;

 wpa_printf(MSG_DEBUG, "CTRL_IFACE: ADD_NETWORK");

 ssid = wpa_supplicant_add_network(wpa_s);
 if (ssid == ((void*)0))
  return -1;

 ret = os_snprintf(buf, buflen, "%d\n", ssid->id);
 if (os_snprintf_error(buflen, ret))
  return -1;
 return ret;
}
