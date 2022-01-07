
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; scalar_t__ key_mgmt; TYPE_1__* current_ssid; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
struct TYPE_2__ {int proto; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_STRING ;
 int WPAS_DBUS_AUTH_MODE_MAX ;
 scalar_t__ WPA_COMPLETED ;
 scalar_t__ WPA_KEY_MGMT_IEEE8021X ;
 scalar_t__ WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 int os_snprintf (char*,int,char*,char const*) ;
 char* wpa_key_mgmt_txt (scalar_t__,int ) ;
 char* wpa_supplicant_get_eap_mode (struct wpa_supplicant*) ;
 int wpas_dbus_simple_property_getter (int *,int ,char const**,int *) ;

dbus_bool_t wpas_dbus_getter_current_auth_mode(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 struct wpa_supplicant *wpa_s = user_data;
 const char *eap_mode;
 const char *auth_mode;
 char eap_mode_buf[WPAS_DBUS_AUTH_MODE_MAX];

 if (wpa_s->wpa_state != WPA_COMPLETED) {
  auth_mode = "INACTIVE";
 } else if (wpa_s->key_mgmt == WPA_KEY_MGMT_IEEE8021X ||
     wpa_s->key_mgmt == WPA_KEY_MGMT_IEEE8021X_NO_WPA) {
  eap_mode = wpa_supplicant_get_eap_mode(wpa_s);
  os_snprintf(eap_mode_buf, WPAS_DBUS_AUTH_MODE_MAX,
       "EAP-%s", eap_mode);
  auth_mode = eap_mode_buf;

 } else if (wpa_s->current_ssid) {
  auth_mode = wpa_key_mgmt_txt(wpa_s->key_mgmt,
          wpa_s->current_ssid->proto);
 } else {
  auth_mode = "UNKNOWN";
 }

 return wpas_dbus_simple_property_getter(iter, DBUS_TYPE_STRING,
      &auth_mode, error);
}
