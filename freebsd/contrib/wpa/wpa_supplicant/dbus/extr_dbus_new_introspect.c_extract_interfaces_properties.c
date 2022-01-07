
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_property_desc {int dbus_interface; scalar_t__ dbus_property; } ;
struct interfaces {int xml; } ;
struct dl_list {int dummy; } ;


 struct interfaces* add_interface (struct dl_list*,int ) ;
 int add_property (int ,struct wpa_dbus_property_desc const*) ;

__attribute__((used)) static void extract_interfaces_properties(
 struct dl_list *list, const struct wpa_dbus_property_desc *properties)
{
 const struct wpa_dbus_property_desc *dsc;
 struct interfaces *iface;

 for (dsc = properties; dsc && dsc->dbus_property; dsc++) {
  iface = add_interface(list, dsc->dbus_interface);
  if (iface)
   add_property(iface->xml, dsc);
 }
}
