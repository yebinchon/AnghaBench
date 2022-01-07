
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_dbus_object_desc {int dummy; } ;
struct dl_list {int dummy; } ;


 int add_interfaces (struct dl_list*,struct wpabuf*) ;
 int dl_list_init (struct dl_list*) ;
 int extract_interfaces (struct dl_list*,struct wpa_dbus_object_desc*) ;

__attribute__((used)) static void add_wpas_interfaces(struct wpabuf *xml,
    struct wpa_dbus_object_desc *obj_dsc)
{
 struct dl_list ifaces;

 dl_list_init(&ifaces);
 extract_interfaces(&ifaces, obj_dsc);
 add_interfaces(&ifaces, xml);
}
