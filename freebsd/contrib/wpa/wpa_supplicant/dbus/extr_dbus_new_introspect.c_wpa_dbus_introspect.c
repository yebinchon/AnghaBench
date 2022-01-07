
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_dbus_object_desc {int connection; } ;
typedef int DBusMessage ;


 char* DBUS_INTROSPECT_1_0_XML_DOCTYPE_DECL_NODE ;
 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int add_child_nodes (struct wpabuf*,int ,int ) ;
 int add_introspectable_interface (struct wpabuf*) ;
 int add_properties_interface (struct wpabuf*) ;
 int add_wpas_interfaces (struct wpabuf*,struct wpa_dbus_object_desc*) ;
 int dbus_message_append_args (int *,int ,char const**,int ) ;
 int dbus_message_get_path (int *) ;
 int * dbus_message_new_method_return (int *) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 char* wpabuf_head (struct wpabuf*) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

DBusMessage * wpa_dbus_introspect(DBusMessage *message,
      struct wpa_dbus_object_desc *obj_dsc)
{

 DBusMessage *reply;
 struct wpabuf *xml;

 xml = wpabuf_alloc(20000);
 if (xml == ((void*)0))
  return ((void*)0);

 wpabuf_put_str(xml, "<?xml version=\"1.0\"?>\n");
 wpabuf_put_str(xml, DBUS_INTROSPECT_1_0_XML_DOCTYPE_DECL_NODE);
 wpabuf_put_str(xml, "<node>");

 add_introspectable_interface(xml);
 add_properties_interface(xml);
 add_wpas_interfaces(xml, obj_dsc);
 add_child_nodes(xml, obj_dsc->connection,
   dbus_message_get_path(message));

 wpabuf_put_str(xml, "</node>\n");

 reply = dbus_message_new_method_return(message);
 if (reply) {
  const char *intro_str = wpabuf_head(xml);

  dbus_message_append_args(reply, DBUS_TYPE_STRING, &intro_str,
      DBUS_TYPE_INVALID);
 }
 wpabuf_free(xml);

 return reply;
}
