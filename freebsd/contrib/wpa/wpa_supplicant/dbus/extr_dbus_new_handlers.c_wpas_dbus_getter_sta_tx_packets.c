
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_dbus_property_desc {int dummy; } ;
struct sta_info {int addr; } ;
struct sta_handler_args {int sta; TYPE_2__* wpa_s; } ;
struct hostapd_data {int dummy; } ;
struct hostap_sta_driver_data {int tx_packets; } ;
typedef int dbus_bool_t ;
struct TYPE_4__ {TYPE_1__* ap_iface; } ;
struct TYPE_3__ {struct hostapd_data** bss; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_UINT64 ;
 int FALSE ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int ) ;
 scalar_t__ hostapd_drv_read_sta_data (struct hostapd_data*,struct hostap_sta_driver_data*,int ) ;
 int wpas_dbus_simple_property_getter (int *,int ,int *,int *) ;

dbus_bool_t wpas_dbus_getter_sta_tx_packets(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
    return FALSE;

}
