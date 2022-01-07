
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct wpa_supplicant {TYPE_2__* ap_iface; TYPE_1__* go_params; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_4__ {int freq; } ;
struct TYPE_3__ {int freq; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_UINT16 ;
 int FALSE ;
 scalar_t__ WPAS_P2P_ROLE_CLIENT ;
 int wpas_dbus_simple_property_getter (int *,int ,int *,int *) ;
 scalar_t__ wpas_get_p2p_role (struct wpa_supplicant*) ;

dbus_bool_t wpas_dbus_getter_p2p_group_frequency(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 u16 op_freq;
 u8 role = wpas_get_p2p_role(wpa_s);

 if (role == WPAS_P2P_ROLE_CLIENT) {
  if (wpa_s->go_params == ((void*)0))
   return FALSE;
  op_freq = wpa_s->go_params->freq;
 } else {
  if (wpa_s->ap_iface == ((void*)0))
   return FALSE;
  op_freq = wpa_s->ap_iface->freq;
 }

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_UINT16,
      &op_freq, error);
}
