
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_dbus_argument {scalar_t__ dir; int type; int * name; } ;


 scalar_t__ ARG_IN ;
 int add_arg (struct wpabuf*,int *,int ,char*) ;
 int wpabuf_printf (struct wpabuf*,char*,char const*,...) ;

__attribute__((used)) static void add_entry(struct wpabuf *xml, const char *type, const char *name,
        const struct wpa_dbus_argument *args, int include_dir)
{
 const struct wpa_dbus_argument *arg;

 if (args == ((void*)0) || args->name == ((void*)0)) {
  wpabuf_printf(xml, "<%s name=\"%s\"/>", type, name);
  return;
 }
 wpabuf_printf(xml, "<%s name=\"%s\">", type, name);
 for (arg = args; arg && arg->name; arg++) {
  add_arg(xml, arg->name, arg->type,
   include_dir ? (arg->dir == ARG_IN ? "in" : "out") :
   ((void*)0));
 }
 wpabuf_printf(xml, "</%s>", type);
}
