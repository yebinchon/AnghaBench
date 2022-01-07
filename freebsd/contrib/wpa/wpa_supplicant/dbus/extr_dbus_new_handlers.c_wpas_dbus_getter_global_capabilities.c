
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;
typedef int DBusError ;


 int DBUS_TYPE_STRING ;
 scalar_t__ wpa_is_fils_sk_pfs_supported (struct wpa_supplicant*) ;
 scalar_t__ wpa_is_fils_supported (struct wpa_supplicant*) ;
 int wpas_dbus_simple_array_property_getter (int *,int ,char const**,size_t,int *) ;

dbus_bool_t wpas_dbus_getter_global_capabilities(
 const struct wpa_dbus_property_desc *property_desc,
 DBusMessageIter *iter, DBusError *error, void *user_data)
{
 const char *capabilities[10] = { ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0) };
 size_t num_items = 0;
 return wpas_dbus_simple_array_property_getter(iter,
            DBUS_TYPE_STRING,
            capabilities,
            num_items, error);
}
