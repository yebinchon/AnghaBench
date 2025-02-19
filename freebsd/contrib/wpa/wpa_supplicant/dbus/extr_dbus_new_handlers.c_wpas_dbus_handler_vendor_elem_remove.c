
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct wpa_supplicant {int ** vendor_elem; } ;
struct ieee802_11_elems {int dummy; } ;
typedef size_t dbus_int32_t ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 int DBUS_ERROR_INVALID_ARGS ;
 size_t NUM_VENDOR_ELEM_FRAMES ;
 scalar_t__ ParseFailed ;
 int dbus_message_iter_get_basic (int *,size_t*) ;
 int dbus_message_iter_get_fixed_array (int *,char**,int*) ;
 int dbus_message_iter_init (int *,int *) ;
 int dbus_message_iter_next (int *) ;
 int dbus_message_iter_recurse (int *,int *) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 scalar_t__ ieee802_11_parse_elems (char*,int,struct ieee802_11_elems*,int ) ;
 int wpabuf_free (int *) ;
 struct wpa_supplicant* wpas_vendor_elem (struct wpa_supplicant*,size_t) ;
 scalar_t__ wpas_vendor_elem_remove (struct wpa_supplicant*,size_t,char*,int) ;
 int wpas_vendor_elem_update (struct wpa_supplicant*) ;

DBusMessage * wpas_dbus_handler_vendor_elem_remove(DBusMessage *message,
         struct wpa_supplicant *wpa_s)
{
 u8 *ielems;
 int len;
 struct ieee802_11_elems elems;
 DBusMessageIter iter, array;
 dbus_int32_t frame_id;

 dbus_message_iter_init(message, &iter);
 dbus_message_iter_get_basic(&iter, &frame_id);
 if (frame_id < 0 || frame_id >= NUM_VENDOR_ELEM_FRAMES) {
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           "Invalid ID");
 }

 dbus_message_iter_next(&iter);
 dbus_message_iter_recurse(&iter, &array);
 dbus_message_iter_get_fixed_array(&array, &ielems, &len);
 if (!ielems || len == 0) {
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           "Invalid value");
 }

 wpa_s = wpas_vendor_elem(wpa_s, frame_id);

 if (len == 1 && *ielems == '*') {
  wpabuf_free(wpa_s->vendor_elem[frame_id]);
  wpa_s->vendor_elem[frame_id] = ((void*)0);
  wpas_vendor_elem_update(wpa_s);
  return ((void*)0);
 }

 if (!wpa_s->vendor_elem[frame_id]) {
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           "ID value does not exist");
 }

 if (ieee802_11_parse_elems(ielems, len, &elems, 0) == ParseFailed) {
  return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
           "Parse error");
 }

 if (wpas_vendor_elem_remove(wpa_s, frame_id, ielems, len) == 0)
  return ((void*)0);

 return dbus_message_new_error(message, DBUS_ERROR_INVALID_ARGS,
          "Not found");
}
