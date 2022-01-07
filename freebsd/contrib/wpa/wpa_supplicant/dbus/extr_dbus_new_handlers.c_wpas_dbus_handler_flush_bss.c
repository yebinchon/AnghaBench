
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
typedef int dbus_uint32_t ;
typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_UINT32 ;
 int dbus_message_get_args (int *,int *,int ,int *,int ) ;
 int wpa_bss_flush (struct wpa_supplicant*) ;
 int wpa_bss_flush_by_age (struct wpa_supplicant*,int ) ;

DBusMessage * wpas_dbus_handler_flush_bss(DBusMessage *message,
       struct wpa_supplicant *wpa_s)
{
 dbus_uint32_t age;

 dbus_message_get_args(message, ((void*)0), DBUS_TYPE_UINT32, &age,
         DBUS_TYPE_INVALID);

 if (age == 0)
  wpa_bss_flush(wpa_s);
 else
  wpa_bss_flush_by_age(wpa_s, age);

 return ((void*)0);
}
