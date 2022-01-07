
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vendor_ext ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct hostapd_data {TYPE_2__* conf; } ;
typedef int dbus_bool_t ;
struct TYPE_4__ {struct wpabuf** wps_vendor_ext; } ;
struct TYPE_3__ {struct hostapd_data** bss; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_BYTE ;
 int FALSE ;
 int MAX_WPS_VENDOR_EXTENSIONS ;
 scalar_t__ WPAS_P2P_ROLE_GO ;
 int os_memset (struct wpabuf**,int ,int) ;
 int wpas_dbus_simple_array_array_property_getter (int *,int ,struct wpabuf**,unsigned int,int *) ;
 scalar_t__ wpas_get_p2p_role (struct wpa_supplicant*) ;

dbus_bool_t wpas_dbus_getter_p2p_group_vendor_ext(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 struct hostapd_data *hapd;
 struct wpabuf *vendor_ext[MAX_WPS_VENDOR_EXTENSIONS];
 unsigned int i, num_vendor_ext = 0;

 os_memset(vendor_ext, 0, sizeof(vendor_ext));


 if (wpas_get_p2p_role(wpa_s) == WPAS_P2P_ROLE_GO) {
  if (wpa_s->ap_iface == ((void*)0))
   return FALSE;
  hapd = wpa_s->ap_iface->bss[0];


  for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
   if (hapd->conf->wps_vendor_ext[i] == ((void*)0))
    continue;
   vendor_ext[num_vendor_ext++] =
    hapd->conf->wps_vendor_ext[i];
  }
 }


 return wpas_dbus_simple_array_array_property_getter(iter,
           DBUS_TYPE_BYTE,
           vendor_ext,
           num_vendor_ext,
           error);
}
