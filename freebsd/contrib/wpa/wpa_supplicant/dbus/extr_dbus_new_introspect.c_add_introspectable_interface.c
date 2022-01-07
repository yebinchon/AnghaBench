
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int WPA_DBUS_INTROSPECTION_INTERFACE ;
 int WPA_DBUS_INTROSPECTION_METHOD ;
 int wpabuf_printf (struct wpabuf*,char*,int ,int ) ;

__attribute__((used)) static void add_introspectable_interface(struct wpabuf *xml)
{
 wpabuf_printf(xml, "<interface name=\"%s\">"
        "<method name=\"%s\">"
        "<arg name=\"data\" type=\"s\" direction=\"out\"/>"
        "</method>"
        "</interface>",
        WPA_DBUS_INTROSPECTION_INTERFACE,
        WPA_DBUS_INTROSPECTION_METHOD);
}
