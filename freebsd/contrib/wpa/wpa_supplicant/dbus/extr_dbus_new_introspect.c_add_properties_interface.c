
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int WPA_DBUS_PROPERTIES_GET ;
 int WPA_DBUS_PROPERTIES_GETALL ;
 int WPA_DBUS_PROPERTIES_INTERFACE ;
 int WPA_DBUS_PROPERTIES_SET ;
 int add_arg (struct wpabuf*,char*,char*,char*) ;
 int wpabuf_printf (struct wpabuf*,char*,int ) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void add_properties_interface(struct wpabuf *xml)
{
 wpabuf_printf(xml, "<interface name=\"%s\">",
        WPA_DBUS_PROPERTIES_INTERFACE);

 wpabuf_printf(xml, "<method name=\"%s\">", WPA_DBUS_PROPERTIES_GET);
 add_arg(xml, "interface", "s", "in");
 add_arg(xml, "propname", "s", "in");
 add_arg(xml, "value", "v", "out");
 wpabuf_put_str(xml, "</method>");

 wpabuf_printf(xml, "<method name=\"%s\">", WPA_DBUS_PROPERTIES_GETALL);
 add_arg(xml, "interface", "s", "in");
 add_arg(xml, "props", "a{sv}", "out");
 wpabuf_put_str(xml, "</method>");

 wpabuf_printf(xml, "<method name=\"%s\">", WPA_DBUS_PROPERTIES_SET);
 add_arg(xml, "interface", "s", "in");
 add_arg(xml, "propname", "s", "in");
 add_arg(xml, "value", "v", "in");
 wpabuf_put_str(xml, "</method>");

 wpabuf_put_str(xml, "</interface>");
}
