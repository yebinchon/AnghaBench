
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_dbus_property_desc {scalar_t__ setter; scalar_t__ getter; int type; int dbus_property; } ;


 int wpabuf_printf (struct wpabuf*,char*,int ,int ,char*,char*) ;

__attribute__((used)) static void add_property(struct wpabuf *xml,
    const struct wpa_dbus_property_desc *dsc)
{
 wpabuf_printf(xml, "<property name=\"%s\" type=\"%s\" "
        "access=\"%s%s\"/>",
        dsc->dbus_property, dsc->type,
        dsc->getter ? "read" : "",
        dsc->setter ? "write" : "");
}
