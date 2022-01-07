
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_method_desc {int args; scalar_t__ dbus_method; int dbus_interface; } ;
struct interfaces {int xml; } ;
struct dl_list {int dummy; } ;


 int add_entry (int ,char*,scalar_t__,int ,int) ;
 struct interfaces* add_interface (struct dl_list*,int ) ;

__attribute__((used)) static void extract_interfaces_methods(
 struct dl_list *list, const struct wpa_dbus_method_desc *methods)
{
 const struct wpa_dbus_method_desc *dsc;
 struct interfaces *iface;

 for (dsc = methods; dsc && dsc->dbus_method; dsc++) {
  iface = add_interface(list, dsc->dbus_interface);
  if (iface)
   add_entry(iface->xml, "method", dsc->dbus_method,
      dsc->args, 1);
 }
}
