
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_dbus_property_desc {int dummy; } ;
struct sta_info {int addr; } ;
struct sta_handler_args {int sta; TYPE_2__* wpa_s; } ;
typedef int dbus_bool_t ;
struct TYPE_4__ {TYPE_1__* ap_iface; } ;
struct TYPE_3__ {int * bss; } ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_BYTE ;
 int ETH_ALEN ;
 int FALSE ;
 struct sta_info* ap_get_sta (int ,int ) ;
 int wpas_dbus_simple_array_property_getter (int *,int ,int ,int ,int *) ;

dbus_bool_t wpas_dbus_getter_sta_address(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
    return FALSE;

}
