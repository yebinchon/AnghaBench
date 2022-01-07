
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef int DBusConnection ;


 int dbus_connection_list_registered (int *,char const*,char***) ;
 int dbus_free_string_array (char**) ;
 int wpabuf_printf (struct wpabuf*,char*,char*) ;

__attribute__((used)) static void add_child_nodes(struct wpabuf *xml, DBusConnection *con,
       const char *path)
{
 char **children;
 int i;


 dbus_connection_list_registered(con, path, &children);
 for (i = 0; children[i]; i++)
  wpabuf_printf(xml, "<node name=\"%s\"/>", children[i]);
 dbus_free_string_array(children);
}
