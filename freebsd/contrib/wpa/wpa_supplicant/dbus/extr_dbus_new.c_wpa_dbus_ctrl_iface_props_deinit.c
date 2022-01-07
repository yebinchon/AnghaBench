
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpas_dbus_priv {int globals_start; TYPE_1__* all_interface_properties; } ;
struct TYPE_2__ {scalar_t__ dbus_property; } ;


 int os_free (char*) ;

__attribute__((used)) static void wpa_dbus_ctrl_iface_props_deinit(struct wpas_dbus_priv *priv)
{
 int idx = priv->globals_start;


 while (priv->all_interface_properties[idx].dbus_property)
  os_free((char *)
   priv->all_interface_properties[idx++].dbus_property);
 os_free((char *) priv->all_interface_properties);
}
