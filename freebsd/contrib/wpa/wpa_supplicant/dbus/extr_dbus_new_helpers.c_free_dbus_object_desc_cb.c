
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusConnection ;


 int free_dbus_object_desc (void*) ;

__attribute__((used)) static void free_dbus_object_desc_cb(DBusConnection *connection, void *obj_dsc)
{
 free_dbus_object_desc(obj_dsc);
}
