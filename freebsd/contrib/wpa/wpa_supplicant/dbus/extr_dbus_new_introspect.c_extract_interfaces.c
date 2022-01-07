
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_object_desc {int properties; int signals; int methods; } ;
struct dl_list {int dummy; } ;


 int extract_interfaces_methods (struct dl_list*,int ) ;
 int extract_interfaces_properties (struct dl_list*,int ) ;
 int extract_interfaces_signals (struct dl_list*,int ) ;

__attribute__((used)) static void extract_interfaces(struct dl_list *list,
          struct wpa_dbus_object_desc *obj_dsc)
{
 extract_interfaces_methods(list, obj_dsc->methods);
 extract_interfaces_signals(list, obj_dsc->signals);
 extract_interfaces_properties(list, obj_dsc->properties);
}
