
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ array_type; int array_len; } ;


 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_BYTE ;

__attribute__((used)) static int wpas_dbus_validate_dbus_ipaddr(struct wpa_dbus_dict_entry entry)
{
 if (entry.type != DBUS_TYPE_ARRAY ||
     entry.array_type != DBUS_TYPE_BYTE ||
     entry.array_len != 4)
  return 0;

 return 1;
}
