
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ie_data {int key_mgmt; int group_cipher; int const pairwise_cipher; scalar_t__ proto; int mgmt_group_cipher; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_ERROR_NO_MEMORY ;
 int DBUS_TYPE_VARIANT ;
 int FALSE ;
 int TRUE ;
 int WPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_IEEE8021X ;
 int WPA_KEY_MGMT_FT_PSK ;
 int WPA_KEY_MGMT_FT_SAE ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B ;
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ;
 int WPA_KEY_MGMT_NONE ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_PSK_SHA256 ;
 int WPA_KEY_MGMT_SAE ;
 scalar_t__ WPA_PROTO_RSN ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,char*,int *) ;
 int dbus_set_error_const (int *,int ,char*) ;
 int wpa_dbus_dict_append_string (int *,char*,char const*) ;
 int wpa_dbus_dict_append_string_array (int *,char*,char const**,int) ;
 int wpa_dbus_dict_close_write (int *,int *) ;
 int wpa_dbus_dict_open_write (int *,int *) ;

__attribute__((used)) static dbus_bool_t wpas_dbus_get_bss_security_prop(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, struct wpa_ie_data *ie_data, DBusError *error)
{
 DBusMessageIter iter_dict, variant_iter;
 const char *group;
 const char *pairwise[5];
 const char *key_mgmt[15];
 int n;

 if (!dbus_message_iter_open_container(iter, DBUS_TYPE_VARIANT,
           "a{sv}", &variant_iter))
  goto nomem;

 if (!wpa_dbus_dict_open_write(&variant_iter, &iter_dict))
  goto nomem;







 n = 0;
 if (ie_data->key_mgmt & WPA_KEY_MGMT_PSK)
  key_mgmt[n++] = "wpa-psk";
 if (ie_data->key_mgmt & WPA_KEY_MGMT_FT_PSK)
  key_mgmt[n++] = "wpa-ft-psk";
 if (ie_data->key_mgmt & WPA_KEY_MGMT_PSK_SHA256)
  key_mgmt[n++] = "wpa-psk-sha256";
 if (ie_data->key_mgmt & WPA_KEY_MGMT_IEEE8021X)
  key_mgmt[n++] = "wpa-eap";
 if (ie_data->key_mgmt & WPA_KEY_MGMT_FT_IEEE8021X)
  key_mgmt[n++] = "wpa-ft-eap";
 if (ie_data->key_mgmt & WPA_KEY_MGMT_IEEE8021X_SHA256)
  key_mgmt[n++] = "wpa-eap-sha256";
 if (ie_data->key_mgmt & WPA_KEY_MGMT_NONE)
  key_mgmt[n++] = "wpa-none";

 if (!wpa_dbus_dict_append_string_array(&iter_dict, "KeyMgmt",
            key_mgmt, n))
  goto nomem;


 switch (ie_data->group_cipher) {
 case 128:
  group = "wep40";
  break;
 case 130:
  group = "tkip";
  break;
 case 134:
  group = "ccmp";
  break;
 case 132:
  group = "gcmp";
  break;
 case 129:
  group = "wep104";
  break;
 case 133:
  group = "ccmp-256";
  break;
 case 131:
  group = "gcmp-256";
  break;
 default:
  group = "";
  break;
 }

 if (!wpa_dbus_dict_append_string(&iter_dict, "Group", group))
  goto nomem;


 n = 0;
 if (ie_data->pairwise_cipher & 130)
  pairwise[n++] = "tkip";
 if (ie_data->pairwise_cipher & 134)
  pairwise[n++] = "ccmp";
 if (ie_data->pairwise_cipher & 132)
  pairwise[n++] = "gcmp";
 if (ie_data->pairwise_cipher & 133)
  pairwise[n++] = "ccmp-256";
 if (ie_data->pairwise_cipher & 131)
  pairwise[n++] = "gcmp-256";

 if (!wpa_dbus_dict_append_string_array(&iter_dict, "Pairwise",
            pairwise, n))
  goto nomem;


 if (ie_data->proto == WPA_PROTO_RSN) {
  switch (ie_data->mgmt_group_cipher) {





  default:
   group = "";
   break;
  }

  if (!wpa_dbus_dict_append_string(&iter_dict, "MgmtGroup",
       group))
   goto nomem;
 }

 if (!wpa_dbus_dict_close_write(&variant_iter, &iter_dict) ||
     !dbus_message_iter_close_container(iter, &variant_iter))
  goto nomem;

 return TRUE;

nomem:
 dbus_set_error_const(error, DBUS_ERROR_NO_MEMORY, "no memory");
 return FALSE;
}
