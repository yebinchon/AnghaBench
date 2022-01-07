
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_signal_info {int current_signal; int current_txrate; int current_noise; scalar_t__ chanwidth; int center_frq1; int center_frq2; int avg_signal; int frequency; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ CHAN_WIDTH_UNKNOWN ;
 int DBUS_ERROR_FAILED ;
 int DBUS_TYPE_VARIANT ;
 int channel_width_to_string (scalar_t__) ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,char*,int *) ;
 int * dbus_message_new_error (int *,int ,char*) ;
 int * dbus_message_new_method_return (int *) ;
 int dbus_message_unref (int *) ;
 int wpa_dbus_dict_append_int32 (int *,char*,int) ;
 int wpa_dbus_dict_append_string (int *,char*,int ) ;
 int wpa_dbus_dict_append_uint32 (int *,char*,int ) ;
 int wpa_dbus_dict_close_write (int *,int *) ;
 int wpa_dbus_dict_open_write (int *,int *) ;
 int wpa_drv_signal_poll (struct wpa_supplicant*,struct wpa_signal_info*) ;
 int * wpas_dbus_error_no_memory (int *) ;

DBusMessage * wpas_dbus_handler_signal_poll(DBusMessage *message,
         struct wpa_supplicant *wpa_s)
{
 struct wpa_signal_info si;
 DBusMessage *reply = ((void*)0);
 DBusMessageIter iter, iter_dict, variant_iter;
 int ret;

 ret = wpa_drv_signal_poll(wpa_s, &si);
 if (ret) {
  return dbus_message_new_error(message, DBUS_ERROR_FAILED,
           "Failed to read signal");
 }

 reply = dbus_message_new_method_return(message);
 if (reply == ((void*)0))
  goto nomem;

 dbus_message_iter_init_append(reply, &iter);

 if (!dbus_message_iter_open_container(&iter, DBUS_TYPE_VARIANT,
           "a{sv}", &variant_iter) ||
     !wpa_dbus_dict_open_write(&variant_iter, &iter_dict) ||
     !wpa_dbus_dict_append_int32(&iter_dict, "rssi",
     si.current_signal) ||
     !wpa_dbus_dict_append_int32(&iter_dict, "linkspeed",
     si.current_txrate / 1000) ||
     !wpa_dbus_dict_append_int32(&iter_dict, "noise",
     si.current_noise) ||
     !wpa_dbus_dict_append_uint32(&iter_dict, "frequency",
      si.frequency) ||
     (si.chanwidth != CHAN_WIDTH_UNKNOWN &&
      !wpa_dbus_dict_append_string(
       &iter_dict, "width",
       channel_width_to_string(si.chanwidth))) ||
     (si.center_frq1 > 0 && si.center_frq2 > 0 &&
      (!wpa_dbus_dict_append_int32(&iter_dict, "center-frq1",
       si.center_frq1) ||
       !wpa_dbus_dict_append_int32(&iter_dict, "center-frq2",
       si.center_frq2))) ||
     (si.avg_signal &&
      !wpa_dbus_dict_append_int32(&iter_dict, "avg-rssi",
      si.avg_signal)) ||
     !wpa_dbus_dict_close_write(&variant_iter, &iter_dict) ||
     !dbus_message_iter_close_container(&iter, &variant_iter))
  goto nomem;

 return reply;

nomem:
 if (reply)
  dbus_message_unref(reply);
 return wpas_dbus_error_no_memory(message);
}
