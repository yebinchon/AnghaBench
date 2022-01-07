
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {struct wpa_dbus_object_desc* prop_changed_flags; struct wpa_dbus_object_desc* path; int user_data; int (* user_data_free_func ) (int ) ;} ;


 int os_free (struct wpa_dbus_object_desc*) ;
 int stub1 (int ) ;

void free_dbus_object_desc(struct wpa_dbus_object_desc *obj_dsc)
{
 if (!obj_dsc)
  return;


 if (obj_dsc->user_data_free_func)
  obj_dsc->user_data_free_func(obj_dsc->user_data);

 os_free(obj_dsc->path);
 os_free(obj_dsc->prop_changed_flags);
 os_free(obj_dsc);
}
