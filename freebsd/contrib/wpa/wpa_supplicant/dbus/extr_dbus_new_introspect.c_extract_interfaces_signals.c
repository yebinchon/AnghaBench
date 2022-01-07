
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_dbus_signal_desc {int args; scalar_t__ dbus_signal; int dbus_interface; } ;
struct interfaces {int xml; } ;
struct dl_list {int dummy; } ;


 int add_entry (int ,char*,scalar_t__,int ,int ) ;
 struct interfaces* add_interface (struct dl_list*,int ) ;

__attribute__((used)) static void extract_interfaces_signals(
 struct dl_list *list, const struct wpa_dbus_signal_desc *signals)
{
 const struct wpa_dbus_signal_desc *dsc;
 struct interfaces *iface;

 for (dsc = signals; dsc && dsc->dbus_signal; dsc++) {
  iface = add_interface(list, dsc->dbus_interface);
  if (iface)
   add_entry(iface->xml, "signal", dsc->dbus_signal,
      dsc->args, 0);
 }
}
